import 'package:pulumi/pulumi.dart' as pulumi;

/// The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
enum UpgradeChannel implements pulumi.PulumiEnum<String> {
  valueRapid("rapid"),
  valueStable("stable"),
  valuePatch("patch"),
  valueNodeImage("node-image"),
  valueNone("none");

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
