/// Specify prefix-list bounds.
enum Condition {
  valueEqualTo("EqualTo"),
  valueGreaterThanOrEqualTo("GreaterThanOrEqualTo"),
  valueLesserThanOrEqualTo("LesserThanOrEqualTo"),
  valueRange("Range");

  const Condition(this.wireValue);
  final String wireValue;

  static Condition fromValue(String value) {
    for (final item in Condition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Condition value: $value');
  }
}
