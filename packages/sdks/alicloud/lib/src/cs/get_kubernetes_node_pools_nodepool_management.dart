// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_node_pools_nodepool_management_auto_repair_policy.dart';
import 'get_kubernetes_node_pools_nodepool_management_auto_upgrade_policy.dart';
import 'get_kubernetes_node_pools_nodepool_management_auto_vul_fix_policy.dart';

class GetKubernetesNodePoolsNodepoolManagement {
  /// Whether to enable automatic repair. Valid values: `true`: Automatic repair. `false`: not automatically repaired.
  final pulumi.Input<bool> autoRepair;
  /// Automatic repair node policy.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy> autoRepairPolicy;
  /// Specifies whether to enable auto update. Valid values: `true`: enables auto update. `false`: disables auto update.
  final pulumi.Input<bool> autoUpgrade;
  /// The auto update policy.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy> autoUpgradePolicy;
  /// Specifies whether to automatically patch CVE vulnerabilities. Valid values: `true`, `false`.
  final pulumi.Input<bool> autoVulFix;
  /// The auto CVE patching policy.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy> autoVulFixPolicy;
  /// Whether to enable automatic scaling. Value:- `true`: enables the node pool auto-scaling function.- `false`: Auto scaling is not enabled. When the value is false, other `auto_scaling` configuration parameters do not take effect.
  final pulumi.Input<bool> enable;
  /// Maximum number of unavailable nodes. Default value: 1. Value range:\[1,1000\].
  final pulumi.Input<int> maxUnavailable;
  /// Number of additional nodes. You have to specify one of surge, surge_percentage.
  final pulumi.Input<int> surge;
  /// Proportion of additional nodes. You have to specify one of surge, surge_percentage.
  final pulumi.Input<int> surgePercentage;

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
      'autoRepairPolicy': pulumi.Input.mapInputValue<GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy, Map<String, dynamic>>(autoRepairPolicy, (value) => value.toMap()),
      'autoUpgrade': autoUpgrade,
      'autoUpgradePolicy': pulumi.Input.mapInputValue<GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy, Map<String, dynamic>>(autoUpgradePolicy, (value) => value.toMap()),
      'autoVulFix': autoVulFix,
      'autoVulFixPolicy': pulumi.Input.mapInputValue<GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy, Map<String, dynamic>>(autoVulFixPolicy, (value) => value.toMap()),
      'enable': enable,
      'maxUnavailable': maxUnavailable,
      'surge': surge,
      'surgePercentage': surgePercentage,
    };
  }

  factory GetKubernetesNodePoolsNodepoolManagement.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolManagement(
      autoRepair: (map['autoRepair'] as bool).input(),
      autoRepairPolicy: (GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy.fromMap((map['autoRepairPolicy'] as Map).cast<String, dynamic>())).input(),
      autoUpgrade: (map['autoUpgrade'] as bool).input(),
      autoUpgradePolicy: (GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy.fromMap((map['autoUpgradePolicy'] as Map).cast<String, dynamic>())).input(),
      autoVulFix: (map['autoVulFix'] as bool).input(),
      autoVulFixPolicy: (GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy.fromMap((map['autoVulFixPolicy'] as Map).cast<String, dynamic>())).input(),
      enable: (map['enable'] as bool).input(),
      maxUnavailable: (map['maxUnavailable'] as int).input(),
      surge: (map['surge'] as int).input(),
      surgePercentage: (map['surgePercentage'] as int).input(),
    );
  }
}

