/// The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
enum UpgradeChannel {
  valueRapid("rapid"),
  valueStable("stable"),
  valuePatch("patch"),
  valueNodeImage("node-image"),
  valueNone("none");

  const UpgradeChannel(this.value);
  final String value;

  static UpgradeChannel fromValue(String value) {
    for (final item in UpgradeChannel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeChannel value: $value');
  }
}

