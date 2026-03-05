/// Details that could optimize the user's request
enum OptimizationPreference {
  cost("Cost"),
  availability("Availability"),
  costAvailabilityBalanced("CostAvailabilityBalanced");

  const OptimizationPreference(this.wireValue);
  final String wireValue;

  static OptimizationPreference fromValue(String value) {
    for (final item in OptimizationPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptimizationPreference value: $value');
  }
}

