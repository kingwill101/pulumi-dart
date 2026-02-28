/// Optional. EnvironmentType selected for the environment.
enum EnvironmentType {
  environmentTypeUnspecified("ENVIRONMENT_TYPE_UNSPECIFIED"),
  base("BASE"),
  intermediate("INTERMEDIATE"),
  comprehensive("COMPREHENSIVE");

  const EnvironmentType(this.value);
  final String value;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}

