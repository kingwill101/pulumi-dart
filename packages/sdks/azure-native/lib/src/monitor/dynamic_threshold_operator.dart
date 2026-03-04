/// The operator used to compare the metric value against the threshold.
enum DynamicThresholdOperator {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueGreaterOrLessThan("GreaterOrLessThan");

  const DynamicThresholdOperator(this.wireValue);
  final String wireValue;

  static DynamicThresholdOperator fromValue(String value) {
    for (final item in DynamicThresholdOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdOperator value: $value');
  }
}
