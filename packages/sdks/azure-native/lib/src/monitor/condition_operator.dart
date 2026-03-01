/// The criteria operator. Relevant and required only for rules of the kind LogAlert.
enum ConditionOperator {
  valueEquals("Equals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueLessThan("LessThan"),
  valueLessThanOrEqual("LessThanOrEqual"),
  valueGreaterOrLessThan("GreaterOrLessThan");

  const ConditionOperator(this.value);
  final String value;

  static ConditionOperator fromValue(String value) {
    for (final item in ConditionOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOperator value: $value');
  }
}

