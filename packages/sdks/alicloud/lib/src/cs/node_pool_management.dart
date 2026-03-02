// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_management_auto_repair_policy.dart';
import 'node_pool_management_auto_upgrade_policy.dart';
import 'node_pool_management_auto_vul_fix_policy.dart';

class NodePoolManagement {
  /// Whether to enable automatic repair. Valid values: `true`: Automatic repair. `false`: not automatically repaired.
  final pulumi.Input<bool>? autoRepair;
  /// Automatic repair node policy. See `auto_repair_policy` below.
  final pulumi.Input<NodePoolManagementAutoRepairPolicy>? autoRepairPolicy;
  /// Specifies whether to enable auto update. Valid values: `true`: enables auto update. `false`: disables auto update.
  final pulumi.Input<bool>? autoUpgrade;
  /// The auto update policy. See `auto_upgrade_policy` below.
  final pulumi.Input<NodePoolManagementAutoUpgradePolicy>? autoUpgradePolicy;
  /// Specifies whether to automatically patch CVE vulnerabilities. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoVulFix;
  /// The auto CVE patching policy. See `auto_vul_fix_policy` below.
  final pulumi.Input<NodePoolManagementAutoVulFixPolicy>? autoVulFixPolicy;
  /// Specifies whether to enable the managed node pool feature. Valid values: `true`: enables the managed node pool feature. `false`: disables the managed node pool feature. Other parameters in this section take effect only when you specify enable=true.
  final pulumi.Input<bool>? enable;
  /// Maximum number of unavailable nodes. Default value: 1. Value range:\[1,1000\].
  final pulumi.Input<int>? maxUnavailable;
  /// Number of additional nodes. You have to specify one of surge, surge_percentage.
  final pulumi.Input<int>? surge;
  /// Proportion of additional nodes. You have to specify one of surge, surge_percentage.
  final pulumi.Input<int>? surgePercentage;

  /// Creates a new [NodePoolManagement].
  /// [autoRepair] Whether to enable automatic repair. Valid values: `true`: Automatic repair. `false`: not automatically repaired.
  /// [autoRepairPolicy] Automatic repair node policy. See `auto_repair_policy` below.
  /// [autoUpgrade] Specifies whether to enable auto update. Valid values: `true`: enables auto update. `false`: disables auto update.
  /// [autoUpgradePolicy] The auto update policy. See `auto_upgrade_policy` below.
  /// [autoVulFix] Specifies whether to automatically patch CVE vulnerabilities. Valid values: `true`, `false`.
  /// [autoVulFixPolicy] The auto CVE patching policy. See `auto_vul_fix_policy` below.
  /// [enable] Specifies whether to enable the managed node pool feature. Valid values: `true`: enables the managed node pool feature. `false`: disables the managed node pool feature. Other parameters in this section take effect only when you specify enable=true.
  /// [maxUnavailable] Maximum number of unavailable nodes. Default value: 1. Value range:\[1,1000\].
  /// [surge] Number of additional nodes. You have to specify one of surge, surge_percentage.
  /// [surgePercentage] Proportion of additional nodes. You have to specify one of surge, surge_percentage.
  NodePoolManagement({
    this.autoRepair,
    this.autoRepairPolicy,
    this.autoUpgrade,
    this.autoUpgradePolicy,
    this.autoVulFix,
    this.autoVulFixPolicy,
    this.enable,
    this.maxUnavailable,
    this.surge,
    this.surgePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
      'autoRepairPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolManagementAutoRepairPolicy, Map<String, dynamic>>(autoRepairPolicy, (value) => value.toMap()),
      'autoUpgrade': ?autoUpgrade,
      'autoUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolManagementAutoUpgradePolicy, Map<String, dynamic>>(autoUpgradePolicy, (value) => value.toMap()),
      'autoVulFix': ?autoVulFix,
      'autoVulFixPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolManagementAutoVulFixPolicy, Map<String, dynamic>>(autoVulFixPolicy, (value) => value.toMap()),
      'enable': ?enable,
      'maxUnavailable': ?maxUnavailable,
      'surge': ?surge,
      'surgePercentage': ?surgePercentage,
    };
  }

  factory NodePoolManagement.fromMap(Map<String, dynamic> map) {
    return NodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : (map['autoRepair']! as bool).input(),
      autoRepairPolicy: map['autoRepairPolicy'] == null ? null : (NodePoolManagementAutoRepairPolicy.fromMap((map['autoRepairPolicy']! as Map).cast<String, dynamic>())).input(),
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade']! as bool).input(),
      autoUpgradePolicy: map['autoUpgradePolicy'] == null ? null : (NodePoolManagementAutoUpgradePolicy.fromMap((map['autoUpgradePolicy']! as Map).cast<String, dynamic>())).input(),
      autoVulFix: map['autoVulFix'] == null ? null : (map['autoVulFix']! as bool).input(),
      autoVulFixPolicy: map['autoVulFixPolicy'] == null ? null : (NodePoolManagementAutoVulFixPolicy.fromMap((map['autoVulFixPolicy']! as Map).cast<String, dynamic>())).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (map['maxUnavailable']! as int).input(),
      surge: map['surge'] == null ? null : (map['surge']! as int).input(),
      surgePercentage: map['surgePercentage'] == null ? null : (map['surgePercentage']! as int).input(),
    );
  }
}

