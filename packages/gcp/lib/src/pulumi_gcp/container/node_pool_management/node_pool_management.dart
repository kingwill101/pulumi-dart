// ignore_for_file: unused_element, unnecessary_cast

class NodePoolManagement {
  /// Whether the nodes will be automatically repaired. Enabled by default.
  final bool? autoRepair;

  /// Whether the nodes will be automatically upgraded. Enabled by default.
  final bool? autoUpgrade;

  NodePoolManagement({
    this.autoRepair,
    this.autoUpgrade,
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
    return map;
  }

  factory NodePoolManagement.fromMap(Map<String, dynamic> map) {
    return NodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade:
          map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
    );
  }
}
