/// Gets or sets user configurable setting to display the environment type.
enum EnvironmentType {
  production("Production"),
  unknown("Unknown"),
  devTest("DevTest");

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

