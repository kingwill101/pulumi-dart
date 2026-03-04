/// Gets or sets environment type.
enum AzureEnvironmentType {
  unknown("Unknown"),
  devTest("DevTest"),
  production("Production");

  const AzureEnvironmentType(this.wireValue);
  final String wireValue;

  static AzureEnvironmentType fromValue(String value) {
    for (final item in AzureEnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureEnvironmentType value: $value');
  }
}
