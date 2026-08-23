/// Notebook parameter type.
enum NotebookParameterType {
  string_("string"),
  int_("int"),
  float("float"),
  bool_("bool");

  const NotebookParameterType(this.wireValue);
  final String wireValue;

  static NotebookParameterType fromValue(String value) {
    for (final item in NotebookParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookParameterType value: $value');
  }
}
