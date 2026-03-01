/// Notebook parameter type.
enum NotebookParameterType {
  valueString("string"),
  valueInt("int"),
  valueFloat("float"),
  valueBool("bool");

  const NotebookParameterType(this.value);
  final String value;

  static NotebookParameterType fromValue(String value) {
    for (final item in NotebookParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookParameterType value: $value');
  }
}

