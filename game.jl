module Games

abstract type Game end


## Game stuff
"""Return a list of the allowable moves at this point."""
function actions(g::Game, state)
    throw
end

"""Return the state that results from making a move from a state."""
function result(g::Game, state, move)
end

"""Return the value of this final state to player."""
function utility(g::Game, state, player)
end

"""Return True if this is a final state for the game."""
function terminal_test(g, state)
    return length(actions(g, state)) == 0
end

"""Return the player whose move it is in this state."""
function to_move(g::Game, state)
    state.to_move
end

function play_game(g::Game, players)
end

function random_player(g::Game, state)
    current_actions = actions(g)
    if length(current_actions) == 0
        nothing
    else
        return random(actions(g))
    end
end



end
