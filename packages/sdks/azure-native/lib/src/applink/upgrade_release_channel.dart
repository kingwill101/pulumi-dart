import 'package:pulumi/pulumi.dart' as pulumi;

/// Release channel
enum UpgradeReleaseChannel implements pulumi.PulumiEnum<String> {
  rapid("Rapid"),
  stable("Stable");

  const UpgradeReleaseChannel(this.wireValue);
  @override
  final String wireValue;

  static UpgradeReleaseChannel fromValue(String value) {
    for (final item in UpgradeReleaseChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeReleaseChannel value: $value');
  }
}
