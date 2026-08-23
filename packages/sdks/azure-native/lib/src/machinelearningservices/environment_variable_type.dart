/// Type of the Environment Variable. Possible values are: local - For local variable
enum EnvironmentVariableType {
  local("local");

  const EnvironmentVariableType(this.wireValue);
  final String wireValue;

  static EnvironmentVariableType fromValue(String value) {
    for (final item in EnvironmentVariableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentVariableType value: $value');
  }
}
