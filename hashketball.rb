require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

# Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that #player.

def num_points_scored (player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player, player_data| 
      #binding.pry
       if player == player_name
         return player_data[:points]
     end  
    end 
  end 
end 

# Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.

def shoe_size(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player, player_data|
       if player == player_name
       return player_data[:shoe]
      end
    end
  end 
end 

# Build a method, team_colors, that takes in an argument of the team name and returns an array of that teams colors.

def team_colors(team_name)
  game_hash.each do |team, team_data|
    # binding.pry
    if team_data[:team_name] == team_name
    return team_data[:colors] #as array of that team colors
  end
 end
end

#Build a method, team_names, that operates on the game hash to return an array of the team names.

def team_names
  game_hash.map do |team, team_data|
      team_data[:team_name]
     ##array of team names
   end
end 

#player_numbers, takes in an argument of a team name and returns an array of the jersey number's for that team.

def player_numbers (team_name)
  team_players = []
  game_hash.each do 
    |team, team_data|
    if team_data[:team_name] == team_name
      team_players = team_data[:players].collect do
      |player, player_data| player_data[:number]
    end
    return team_players
    end
  end
end


#Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

def player_stats(player_name)
  game_hash.each do |team, team_data| 
    team_data[:players].each do 
      |player, player_stats|
      # binding.pry
      if player == player_name
        return player_stats
      end
    end
  end
end

#   * Build a method, `big_shoe_rebounds`, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:
#   * First, find the player with the largest shoe size
#   * Then, return that player's number of rebounds
#   * Remember to think about return values here. Use `binding.pry` to drop into your method and understand what it is returning and why.

def big_shoe_rebounds
  #find the player with largest shoe size 
  max_value = 0
  game_hash.each do |team, team_data|
    team_data[:players].each do |player,player_stats|
       if player_stats[:shoe] > max_value
         max_value = player_stats[:shoe]
       end
      return player_stats[:rebounds]
    end 
  end
  #return that players number of rebounds
end



