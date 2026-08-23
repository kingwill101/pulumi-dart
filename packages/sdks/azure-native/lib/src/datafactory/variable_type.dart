/// Variable type.
enum VariableType {
  string_("String"),
  bool_("Bool"),
  array("Array");

  const VariableType(this.wireValue);
  final String wireValue;

  static VariableType fromValue(String value) {
    for (final item in VariableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableType value: $value');
  }
}
