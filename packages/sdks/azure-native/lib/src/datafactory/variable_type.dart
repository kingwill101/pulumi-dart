/// Variable type.
enum VariableType {
  valueString("String"),
  valueBool("Bool"),
  valueArray("Array");

  const VariableType(this.value);
  final String value;

  static VariableType fromValue(String value) {
    for (final item in VariableType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableType value: $value');
  }
}

