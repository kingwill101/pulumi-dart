import 'package:pulumi/pulumi.dart' as pulumi;

/// Details that could optimize the user's request
enum OptimizationPreference implements pulumi.PulumiEnum<String> {
  cost("Cost"),
  availability("Availability"),
  costAvailabilityBalanced("CostAvailabilityBalanced");

  const OptimizationPreference(this.wireValue);
  @override
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
