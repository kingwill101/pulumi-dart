import 'package:pulumi/pulumi.dart' as pulumi;

/// The upgrade channel of the agent
enum UpgradeChannel implements pulumi.PulumiEnum<String> {
  preview("Preview"),
  stable("Stable");

  const UpgradeChannel(this.wireValue);
  @override
  final String wireValue;

  static UpgradeChannel fromValue(String value) {
    for (final item in UpgradeChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeChannel value: $value');
  }
}
