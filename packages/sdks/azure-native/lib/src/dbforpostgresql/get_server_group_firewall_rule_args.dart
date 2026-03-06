// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_server_group_firewall_rule_args_doc}
/// Arguments for getServerGroupFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_server_group_firewall_rule_args_doc}
class GetServerGroupFirewallRuleArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the cluster firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServerGroupFirewallRuleArgs].
  /// [clusterName] The name of the cluster.
  /// [firewallRuleName] The name of the cluster firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetServerGroupFirewallRuleArgs({
    required this.clusterName,
    required this.firewallRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerGroupFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupFirewallRuleArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      firewallRuleName: pulumi.Input.fromValue(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

