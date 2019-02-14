# https://techdevguide.withgoogle.com/paths/foundational/find-longest-word-in-dictionary-that-subsequence-of-given-string/#code-challenge
words  = ["able", "ale", "apple", "bale", "kangaroo","applepie"]
correctArr = []
correct = ""
words.each do |word|
  s = "abpppleei"
  correctArr = []
  word.each_char do |char|
    if s.include? char
      s.slice(s.index(char))
      correctArr.push char
    end
  end
  if correct.length < correctArr.length
    correct = correctArr.join
  end
end
puts correct
