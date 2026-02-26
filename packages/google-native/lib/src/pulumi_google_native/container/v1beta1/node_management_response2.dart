// ignore_for_file: unused_element, unnecessary_cast

import 'auto_upgrade_options_response2.dart';

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementResponse2 {
  /// Whether the nodes will be automatically repaired.
  final bool autoRepair;

  /// Whether the nodes will be automatically upgraded.
  final bool autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final AutoUpgradeOptionsResponse2 upgradeOptions;

  NodeManagementResponse2({
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

  factory NodeManagementResponse2.fromMap(Map<String, dynamic> map) {
    return NodeManagementResponse2(
      autoRepair: map['autoRepair'] as bool,
      autoUpgrade: map['autoUpgrade'] as bool,
      upgradeOptions: AutoUpgradeOptionsResponse2.fromMap(
          (map['upgradeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
