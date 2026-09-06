import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets environment type.
enum AzureEnvironmentType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  devTest("DevTest"),
  production("Production");

  const AzureEnvironmentType(this.wireValue);
  @override
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
