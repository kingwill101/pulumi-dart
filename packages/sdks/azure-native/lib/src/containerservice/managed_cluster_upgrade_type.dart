import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedClusterUpgradeType is the type of upgrade to be applied.
enum ManagedClusterUpgradeType implements pulumi.PulumiEnum<String> {
  full("Full"),
  nodeImageOnly("NodeImageOnly"),
  controlPlaneOnly("ControlPlaneOnly");

  const ManagedClusterUpgradeType(this.wireValue);
  @override
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
