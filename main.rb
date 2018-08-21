require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8,
  'Only planet known to support life')
  solar_system.add_planet(earth)

  saturn = Planet.new('saturn', 'yellow', 1234, 567, "Has rings")
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...

end

main
