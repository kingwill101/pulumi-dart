/// Gets or sets environment type.
enum AzureEnvironmentType {
  unknown("Unknown"),
  devTest("DevTest"),
  production("Production");

  const AzureEnvironmentType(this.value);
  final String value;

  static AzureEnvironmentType fromValue(String value) {
    for (final item in AzureEnvironmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureEnvironmentType value: $value');
  }
}

