/// The direction of the parameter.
enum ScriptActivityParameterDirection {
  valueInput("Input"),
  valueOutput("Output"),
  valueInputOutput("InputOutput");

  const ScriptActivityParameterDirection(this.wireValue);
  final String wireValue;

  static ScriptActivityParameterDirection fromValue(String value) {
    for (final item in ScriptActivityParameterDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityParameterDirection value: $value');
  }
}

