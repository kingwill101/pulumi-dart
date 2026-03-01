/// Aggregation type for child dependencies.
enum DependenciesAggregationType {
  worstOf("WorstOf"),
  thresholds("Thresholds");

  const DependenciesAggregationType(this.value);
  final String value;

  static DependenciesAggregationType fromValue(String value) {
    for (final item in DependenciesAggregationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DependenciesAggregationType value: $value');
  }
}

