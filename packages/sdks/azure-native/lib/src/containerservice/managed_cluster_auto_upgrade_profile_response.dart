// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto upgrade profile for a managed cluster.
class ManagedClusterAutoUpgradeProfileResponse {
  /// Node OS Upgrade Channel. Manner in which the OS on your nodes is updated. The default is NodeImage.
  final pulumi.Input<String>? nodeOSUpgradeChannel;
  /// The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  final pulumi.Input<String>? upgradeChannel;

  /// Creates a new [ManagedClusterAutoUpgradeProfileResponse].
  /// [nodeOSUpgradeChannel] Node OS Upgrade Channel. Manner in which the OS on your nodes is updated. The default is NodeImage.
  /// [upgradeChannel] The upgrade channel for auto upgrade. The default is 'none'. For more information see [setting the AKS cluster auto-upgrade channel](https://docs.microsoft.com/azure/aks/upgrade-cluster#set-auto-upgrade-channel).
  ManagedClusterAutoUpgradeProfileResponse({
    this.nodeOSUpgradeChannel,
    this.upgradeChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeOSUpgradeChannel': ?nodeOSUpgradeChannel,
      'upgradeChannel': ?upgradeChannel,
    };
  }

  factory ManagedClusterAutoUpgradeProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAutoUpgradeProfileResponse(
      nodeOSUpgradeChannel: map['nodeOSUpgradeChannel'] == null ? null : (map['nodeOSUpgradeChannel']! as String).input(),
      upgradeChannel: map['upgradeChannel'] == null ? null : (map['upgradeChannel']! as String).input(),
    );
  }
}

