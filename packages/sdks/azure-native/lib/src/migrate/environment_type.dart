import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets user configurable setting to display the environment type.
enum EnvironmentType implements pulumi.PulumiEnum<String> {
  production("Production"),
  unknown("Unknown"),
  devTest("DevTest");

  const EnvironmentType(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}
