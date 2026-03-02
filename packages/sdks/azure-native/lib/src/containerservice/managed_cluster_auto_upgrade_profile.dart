// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto upgrade profile for a managed cluster.
class ManagedClusterAutoUpgradeProfile {
  /// Node OS Upgrade Channel. Manner in which the OS on your nodes is updated. The default is NodeImage.
  final pulumi.Input<String>? nodeOSUpgradeChannel;
  /// The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  final pulumi.Input<String>? upgradeChannel;

  /// Creates a new [ManagedClusterAutoUpgradeProfile].
  /// [nodeOSUpgradeChannel] Node OS Upgrade Channel. Manner in which the OS on your nodes is updated. The default is NodeImage.
  /// [upgradeChannel] The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  ManagedClusterAutoUpgradeProfile({
    this.nodeOSUpgradeChannel,
    this.upgradeChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeOSUpgradeChannel': ?nodeOSUpgradeChannel,
      'upgradeChannel': ?upgradeChannel,
    };
  }

  factory ManagedClusterAutoUpgradeProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAutoUpgradeProfile(
      nodeOSUpgradeChannel: map['nodeOSUpgradeChannel'] == null ? null : (map['nodeOSUpgradeChannel'] as String).input(),
      upgradeChannel: map['upgradeChannel'] == null ? null : (map['upgradeChannel'] as String).input(),
    );
  }
}

