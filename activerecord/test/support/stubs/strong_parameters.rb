# frozen_string_literal: true

class Parameters
  def initialize(parameters = {})
    @parameters = parameters.with_indifferent_access
    @permitted = false
  end

  def permitted?
    @permitted
  end

  def permit!
    @permitted = true
    self
  end

  def to_h
    @parameters.to_h
  end
end
