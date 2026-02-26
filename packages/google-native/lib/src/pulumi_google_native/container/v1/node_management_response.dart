// ignore_for_file: unused_element, unnecessary_cast

import 'auto_upgrade_options_response.dart';

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementResponse {
  /// A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  final bool autoRepair;

  /// A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final bool autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final AutoUpgradeOptionsResponse upgradeOptions;

  NodeManagementResponse({
    required this.autoRepair,
    required this.autoUpgrade,
    required this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoRepair'] = autoRepair;
    map['autoUpgrade'] = autoUpgrade;
    map['upgradeOptions'] = upgradeOptions.toMap();
    return map;
  }

  factory NodeManagementResponse.fromMap(Map<String, dynamic> map) {
    return NodeManagementResponse(
      autoRepair: map['autoRepair'] as bool,
      autoUpgrade: map['autoUpgrade'] as bool,
      upgradeOptions: AutoUpgradeOptionsResponse.fromMap(
          (map['upgradeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
