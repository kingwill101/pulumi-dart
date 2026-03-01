/// The operation against the threshold that triggers alert rule.
enum TriggerOperator {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueEqual("Equal"),
  valueNotEqual("NotEqual");

  const TriggerOperator(this.value);
  final String value;

  static TriggerOperator fromValue(String value) {
    for (final item in TriggerOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerOperator value: $value');
  }
}

