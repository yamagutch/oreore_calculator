# -*- coding: utf-8 -*-

# 計算するよ
def calculater(molecule, denominator)
  output_str = "------------------\n"
  result = molecule.gsub(",","").to_f / denominator.gsub(",","").to_f
  if result > 1.0
    output_str += result.round(2).to_s + "\n"
  else
    output_str += result.round(4).to_s + "\n"
    output_str += (result * 100).round(2).to_s + " %\n"
  end
  return output_str + "\n\n"
end

# 挨拶生成
def create_greeting
  hour = Time.now.hour
  if hour < 5 || hour >= 17
    return "コンバンハ"
  elsif hour < 11
    return "オハヨウ"
  else
    return "コンニチハ"
  end
end

# メイン
def main
  puts "\nヾ(ﾟ▽ﾟ*)#{create_greeting}\n\n"
  
  loop do
    puts "分子を入力してくれや"
    molecule = gets.chomp
    break if molecule == "exit"
    puts "分母を入力してくれや"
    denominator = gets.chomp
    break if denominator == "exit"
    puts calculater(molecule, denominator)
  end
  
  puts "\nヾ(ﾟ▽ﾟ*)サヨナラ"
end

main