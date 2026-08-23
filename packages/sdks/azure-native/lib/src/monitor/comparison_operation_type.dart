/// the operator that is used to compare the metric data and the threshold.
enum ComparisonOperationType {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual");

  const ComparisonOperationType(this.wireValue);
  final String wireValue;

  static ComparisonOperationType fromValue(String value) {
    for (final item in ComparisonOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComparisonOperationType value: $value');
  }
}
