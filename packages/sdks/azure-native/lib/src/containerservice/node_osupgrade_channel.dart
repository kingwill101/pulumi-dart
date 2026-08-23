/// Node OS Upgrade Channel. Manner in which the OS on your nodes is updated. The default is NodeImage.
enum NodeOSUpgradeChannel {
  valueNone("None"),
  valueUnmanaged("Unmanaged"),
  valueNodeImage("NodeImage"),
  valueSecurityPatch("SecurityPatch");

  const NodeOSUpgradeChannel(this.wireValue);
  final String wireValue;

  static NodeOSUpgradeChannel fromValue(String value) {
    for (final item in NodeOSUpgradeChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeOSUpgradeChannel value: $value');
  }
}
