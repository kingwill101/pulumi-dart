import 'package:pulumi/pulumi.dart' as pulumi;

/// Use to select the lifecycle stages of a Container App during which the Managed Identity should be available.
enum IdentitySettingsLifeCycle implements pulumi.PulumiEnum<String> {
  valueInit("Init"),
  valueMain("Main"),
  valueNone("None"),
  valueAll("All");

  const IdentitySettingsLifeCycle(this.wireValue);
  @override
  final String wireValue;

  static IdentitySettingsLifeCycle fromValue(String value) {
    for (final item in IdentitySettingsLifeCycle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentitySettingsLifeCycle value: $value');
  }
}
