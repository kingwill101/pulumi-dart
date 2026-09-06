import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
enum AutoUpgradeOptions implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutoUpgradeOptions(this.wireValue);
  @override
  final String wireValue;

  static AutoUpgradeOptions fromValue(String value) {
    for (final item in AutoUpgradeOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpgradeOptions value: $value');
  }
}
