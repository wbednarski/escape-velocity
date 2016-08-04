defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "escape velocity of earth is correct" do
    ev = :earth |> Physics.Rocketry.escape_velocity
    assert ev === 11.2
  end

  test "escape velocity of planet X is correct" do
    ev = %{mass: 4.0e22, radius: 6.21e6} |> Physics.Rocketry.escape_velocity
    assert ev == 1
  end
end
