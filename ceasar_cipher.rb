#This is only a general version without z to a cycling, maybe add it later...



def ceasar_cipher    #the cipher itself 
  puts "Your text?"
  text = gets.chomp
  
  puts "The Key?"
  @key = gets.to_i

def converter word  #helper method which converts a single word
  key = @key
split_word = word.split("")
converted_word = split_word.map! do |letter|
  if letter == "?" || letter == "." || letter == "," || letter == "!"
letter = letter
else
  letter_to_code = (letter.ord + key).chr
   end
 end
 converted_word.join("")
 end

converted_text =  text.split(" ")

result =  converted_text.map! do |word|   
  converter(word) #using the helper method to convert the text word by word
end
result.join(" ")
end

