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
  GetServerGroupFirewallRuleArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> firewallRuleName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      firewallRuleName = pulumi.Input.asInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerGroupFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupFirewallRuleArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      firewallRuleName: pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

