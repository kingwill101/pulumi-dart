// ignore_for_file: unused_element, unnecessary_cast

import 'get_kubernetes_node_pools_nodepool_management_auto_repair_policy.dart';
import 'get_kubernetes_node_pools_nodepool_management_auto_upgrade_policy.dart';
import 'get_kubernetes_node_pools_nodepool_management_auto_vul_fix_policy.dart';

class GetKubernetesNodePoolsNodepoolManagement {
  /// Whether to enable automatic repair. Valid values: `true`: Automatic repair. `false`: not automatically repaired.
  final bool autoRepair;
  /// Automatic repair node policy.
  final GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy autoRepairPolicy;
  /// Specifies whether to enable auto update. Valid values: `true`: enables auto update. `false`: disables auto update.
  final bool autoUpgrade;
  /// The auto update policy.
  final GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy autoUpgradePolicy;
  /// Specifies whether to automatically patch CVE vulnerabilities. Valid values: `true`, `false`.
  final bool autoVulFix;
  /// The auto CVE patching policy.
  final GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy autoVulFixPolicy;
  /// Whether to enable automatic scaling. Value:- `true`: enables the node pool auto-scaling function.- `false`: Auto scaling is not enabled. When the value is false, other `auto_scaling` configuration parameters do not take effect.
  final bool enable;
  /// Maximum number of unavailable nodes. Default value: 1. Value range:\[1,1000\].
  final int maxUnavailable;
  /// Number of additional nodes. You have to specify one of surge, surge_percentage.
  final int surge;
  /// Proportion of additional nodes. You have to specify one of surge, surge_percentage.
  final int surgePercentage;

  /// Creates a new [GetKubernetesNodePoolsNodepoolManagement].
  /// [autoRepair] Whether to enable automatic repair. Valid values: `true`: Automatic repair. `false`: not automatically repaired.
  /// [autoRepairPolicy] Automatic repair node policy.
  /// [autoUpgrade] Specifies whether to enable auto update. Valid values: `true`: enables auto update. `false`: disables auto update.
  /// [autoUpgradePolicy] The auto update policy.
  /// [autoVulFix] Specifies whether to automatically patch CVE vulnerabilities. Valid values: `true`, `false`.
  /// [autoVulFixPolicy] The auto CVE patching policy.
  /// [enable] Whether to enable automatic scaling. Value:- `true`: enables the node pool auto-scaling function.- `false`: Auto scaling is not enabled. When the value is false, other `auto_scaling` configuration parameters do not take effect.
  /// [maxUnavailable] Maximum number of unavailable nodes. Default value: 1. Value range:\[1,1000\].
  /// [surge] Number of additional nodes. You have to specify one of surge, surge_percentage.
  /// [surgePercentage] Proportion of additional nodes. You have to specify one of surge, surge_percentage.
  GetKubernetesNodePoolsNodepoolManagement({
    required this.autoRepair,
    required this.autoRepairPolicy,
    required this.autoUpgrade,
    required this.autoUpgradePolicy,
    required this.autoVulFix,
    required this.autoVulFixPolicy,
    required this.enable,
    required this.maxUnavailable,
    required this.surge,
    required this.surgePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoRepairPolicy': autoRepairPolicy.toMap(),
      'autoUpgrade': autoUpgrade,
      'autoUpgradePolicy': autoUpgradePolicy.toMap(),
      'autoVulFix': autoVulFix,
      'autoVulFixPolicy': autoVulFixPolicy.toMap(),
      'enable': enable,
      'maxUnavailable': maxUnavailable,
      'surge': surge,
      'surgePercentage': surgePercentage,
    };
  }

  factory GetKubernetesNodePoolsNodepoolManagement.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolManagement(
      autoRepair: map['autoRepair'] as bool,
      autoRepairPolicy: GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy.fromMap((map['autoRepairPolicy'] as Map).cast<String, dynamic>()),
      autoUpgrade: map['autoUpgrade'] as bool,
      autoUpgradePolicy: GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy.fromMap((map['autoUpgradePolicy'] as Map).cast<String, dynamic>()),
      autoVulFix: map['autoVulFix'] as bool,
      autoVulFixPolicy: GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy.fromMap((map['autoVulFixPolicy'] as Map).cast<String, dynamic>()),
      enable: map['enable'] as bool,
      maxUnavailable: map['maxUnavailable'] as int,
      surge: map['surge'] as int,
      surgePercentage: map['surgePercentage'] as int,
    );
  }
}

