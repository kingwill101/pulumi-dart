// ignore_for_file: unused_element, unnecessary_cast

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagement2 {
  /// Whether the nodes will be automatically repaired.
  final bool? autoRepair;

  /// Whether the nodes will be automatically upgraded.
  final bool? autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final Map<String, dynamic>? upgradeOptions;

  NodeManagement2({
    this.autoRepair,
    this.autoUpgrade,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRepairValue = autoRepair;
    if (autoRepairValue != null) {
      map['autoRepair'] = autoRepairValue;
    }
    final autoUpgradeValue = autoUpgrade;
    if (autoUpgradeValue != null) {
      map['autoUpgrade'] = autoUpgradeValue;
    }
    final upgradeOptionsValue = upgradeOptions;
    if (upgradeOptionsValue != null) {
      map['upgradeOptions'] = upgradeOptionsValue;
    }
    return map;
  }

  factory NodeManagement2.fromMap(Map<String, dynamic> map) {
    return NodeManagement2(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade:
          map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
      upgradeOptions: map['upgradeOptions'] == null
          ? null
          : (map['upgradeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}
