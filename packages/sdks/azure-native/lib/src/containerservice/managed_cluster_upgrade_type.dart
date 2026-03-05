/// ManagedClusterUpgradeType is the type of upgrade to be applied.
enum ManagedClusterUpgradeType {
  full("Full"),
  nodeImageOnly("NodeImageOnly"),
  controlPlaneOnly("ControlPlaneOnly");

  const ManagedClusterUpgradeType(this.wireValue);
  final String wireValue;

  static ManagedClusterUpgradeType fromValue(String value) {
    for (final item in ManagedClusterUpgradeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterUpgradeType value: $value');
  }
}

