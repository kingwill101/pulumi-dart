/// The comparison operator.
enum OperatorType {
  equalTo("EqualTo"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo");

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

