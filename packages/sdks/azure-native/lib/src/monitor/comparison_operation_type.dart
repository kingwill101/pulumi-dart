/// the operator that is used to compare the metric data and the threshold.
enum ComparisonOperationType {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual");

  const ComparisonOperationType(this.value);
  final String value;

  static ComparisonOperationType fromValue(String value) {
    for (final item in ComparisonOperationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComparisonOperationType value: $value');
  }
}

