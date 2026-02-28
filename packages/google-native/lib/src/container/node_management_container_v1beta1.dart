// ignore_for_file: unused_element, unnecessary_cast

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementContainerV1beta1 {
  /// Whether the nodes will be automatically repaired.
  final bool? autoRepair;

  /// Whether the nodes will be automatically upgraded.
  final bool? autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final Map<String, dynamic>? upgradeOptions;

  /// Creates a new [NodeManagementContainerV1beta1].
  /// [autoRepair] Whether the nodes will be automatically repaired.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  NodeManagementContainerV1beta1({
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

  factory NodeManagementContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeManagementContainerV1beta1(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade:
          map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
      upgradeOptions: map['upgradeOptions'] == null
          ? null
          : (map['upgradeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}
