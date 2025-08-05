defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck())
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    # Set a fixed seed for deterministic shuffling
    :rand.seed(:exsplus, {123, 456, 789})

    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end
end
