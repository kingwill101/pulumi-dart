/// script execution parameter type
enum ScriptExecutionParameterType {
  value("Value"),
  secureValue("SecureValue"),
  credential("Credential");

  const ScriptExecutionParameterType(this.value);
  final String value;

  static ScriptExecutionParameterType fromValue(String value) {
    for (final item in ScriptExecutionParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptExecutionParameterType value: $value');
  }
}

