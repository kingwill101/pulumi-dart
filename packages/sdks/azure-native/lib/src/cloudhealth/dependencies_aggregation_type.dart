/// Aggregation type for child dependencies.
enum DependenciesAggregationType {
  worstOf("WorstOf"),
  thresholds("Thresholds");

  const DependenciesAggregationType(this.wireValue);
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

