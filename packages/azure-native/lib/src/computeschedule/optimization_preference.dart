/// Details that could optimize the user's request
enum OptimizationPreference {
  cost("Cost"),
  availability("Availability"),
  costAvailabilityBalanced("CostAvailabilityBalanced");

  const OptimizationPreference(this.value);
  final String value;

  static OptimizationPreference fromValue(String value) {
    for (final item in OptimizationPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptimizationPreference value: $value');
  }
}

