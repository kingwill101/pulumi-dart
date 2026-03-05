/// script execution parameter type
enum ScriptExecutionParameterType {
  value("Value"),
  secureValue("SecureValue"),
  credential("Credential");

  const ScriptExecutionParameterType(this.wireValue);
  final String wireValue;

  static ScriptExecutionParameterType fromValue(String value) {
    for (final item in ScriptExecutionParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptExecutionParameterType value: $value');
  }
}

