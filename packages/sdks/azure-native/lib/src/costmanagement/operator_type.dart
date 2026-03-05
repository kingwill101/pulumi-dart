/// The operator to use for comparison.
enum OperatorType {
  valueIn("In"),
  valueContains("Contains");

  const OperatorType(this.wireValue);
  final String wireValue;

  static OperatorType fromValue(String value) {
    for (final item in OperatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorType value: $value');
  }
}

