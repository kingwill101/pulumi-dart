/// Type of the Environment Variable. Possible values are: local - For local variable
enum EnvironmentVariableType {
  valueLocal("local");

  const EnvironmentVariableType(this.value);
  final String value;

  static EnvironmentVariableType fromValue(String value) {
    for (final item in EnvironmentVariableType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentVariableType value: $value');
  }
}

