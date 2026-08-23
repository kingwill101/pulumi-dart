// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_horizondb_get_horizon_db_firewall_rule_args_doc}
/// Arguments for getHorizonDbFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_horizondb_get_horizon_db_firewall_rule_args_doc}
class GetHorizonDbFirewallRuleArgs {
  /// The name of the HorizonDB cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the HorizonDB firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the HorizonDB pool.
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHorizonDbFirewallRuleArgs].
  /// [clusterName] The name of the HorizonDB cluster.
  /// [firewallRuleName] The name of the HorizonDB firewall rule.
  /// [poolName] The name of the HorizonDB pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHorizonDbFirewallRuleArgs({
    required this.clusterName,
    required this.firewallRuleName,
    required this.poolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'firewallRuleName': firewallRuleName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHorizonDbFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetHorizonDbFirewallRuleArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      firewallRuleName: pulumi.Input.fromValue(map['firewallRuleName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
