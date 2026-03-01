/// The operator to use for comparison.
enum OperatorType {
  valueIn("In"),
  valueContains("Contains");

  const OperatorType(this.value);
  final String value;

  static OperatorType fromValue(String value) {
    for (final item in OperatorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorType value: $value');
  }
}

