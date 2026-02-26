// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolManagement {
  /// Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  ///
  /// This block also contains several computed attributes, documented below.
  final bool? autoRepair;

  /// Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final bool? autoUpgrade;

  ClusterNodePoolManagement({
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

  factory ClusterNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade:
          map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
    );
  }
}
