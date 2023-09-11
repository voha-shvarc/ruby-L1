args = ARGV
first_player_move = args[0]
second_player_move = args[1]


scoresmapping = {
    'stone' => {
        'stone' => "withdraw",
        'paper' => "lose",
        'scissors' => "win"
    },
    'paper' => {
        'stone' => "win",
        'paper' => "withdraw",
        'scissors' => "lose"
    },
    'scissors' => {
        'stone' => "lose",
        'paper' => "win",
        'scissors' => "withdraw"
        
    }
}

possible_moves = scoresmapping.keys
if !possible_moves.include?(first_player_move) or !possible_moves.include?(second_player_move)
    puts "Try again. Example of usage - 'ruby main.rb move1 move2'. Possbile moves are #{possible_moves}"
else
    game_result = scoresmapping[first_player_move][second_player_move]
    puts "Game result: #{game_result}"
end
