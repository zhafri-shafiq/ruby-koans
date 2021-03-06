# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a < 1 || b < 1 || c < 1
    raise TriangleError, "A triangle should not have any sides of length less than 1"
  end
  if a >= b + c || b >= a + c || c >= a + b
    raise TriangleError, "Any two sides of a triangle should add up to more than the third side"
  end
  unless a == b && a == c
    if a != b && b != c && a != c
      :scalene
    else
      :isosceles
    end
  else
    :equilateral
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
