/// The operator used to compare the metric value against the threshold.
enum DynamicThresholdOperator {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueGreaterOrLessThan("GreaterOrLessThan");

  const DynamicThresholdOperator(this.value);
  final String value;

  static DynamicThresholdOperator fromValue(String value) {
    for (final item in DynamicThresholdOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdOperator value: $value');
  }
}

