/// The direction of the parameter.
enum ScriptActivityParameterDirection {
  valueInput("Input"),
  valueOutput("Output"),
  valueInputOutput("InputOutput");

  const ScriptActivityParameterDirection(this.value);
  final String value;

  static ScriptActivityParameterDirection fromValue(String value) {
    for (final item in ScriptActivityParameterDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityParameterDirection value: $value');
  }
}

