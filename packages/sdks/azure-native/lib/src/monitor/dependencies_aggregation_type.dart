import 'package:pulumi/pulumi.dart' as pulumi;

/// Aggregation type for child dependencies.
enum DependenciesAggregationType implements pulumi.PulumiEnum<String> {
  worstOf("WorstOf"),
  thresholds("Thresholds");

  const DependenciesAggregationType(this.wireValue);
  @override
  final String wireValue;

  static DependenciesAggregationType fromValue(String value) {
    for (final item in DependenciesAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DependenciesAggregationType value: $value');
  }
}
