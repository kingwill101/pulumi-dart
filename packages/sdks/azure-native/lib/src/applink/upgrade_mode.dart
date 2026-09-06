import 'package:pulumi/pulumi.dart' as pulumi;

/// Upgrade mode.
enum UpgradeMode implements pulumi.PulumiEnum<String> {
  fullyManaged("FullyManaged"),
  selfManaged("SelfManaged");

  const UpgradeMode(this.wireValue);
  @override
  final String wireValue;

  static UpgradeMode fromValue(String value) {
    for (final item in UpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeMode value: $value');
  }
}
