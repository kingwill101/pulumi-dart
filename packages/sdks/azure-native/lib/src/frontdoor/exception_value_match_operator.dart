/// Comparison operator to apply to the value to be matched.
enum ExceptionValueMatchOperator {
  equals("Equals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith"),
  equalsAny("EqualsAny"),
  iPMatch("IPMatch");

  const ExceptionValueMatchOperator(this.wireValue);
  final String wireValue;

  static ExceptionValueMatchOperator fromValue(String value) {
    for (final item in ExceptionValueMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionValueMatchOperator value: $value');
  }
}
