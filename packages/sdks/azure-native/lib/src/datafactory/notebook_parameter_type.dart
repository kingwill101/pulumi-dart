/// Notebook parameter type.
enum NotebookParameterType {
  valueString("string"),
  valueInt("int"),
  valueFloat("float"),
  valueBool("bool");

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
