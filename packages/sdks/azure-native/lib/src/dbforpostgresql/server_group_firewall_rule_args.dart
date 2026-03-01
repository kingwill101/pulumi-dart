// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_server_group_firewall_rule_args_doc}
/// The set of arguments for ServerGroupFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_server_group_firewall_rule_args_doc}
class ServerGroupFirewallRuleArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The end IP address of the cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> endIpAddress;
  /// The name of the cluster firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The start IP address of the cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [ServerGroupFirewallRuleArgs].
  /// [clusterName] The name of the cluster.
  /// [endIpAddress] The end IP address of the cluster firewall rule. Must be IPv4 format.
  /// [firewallRuleName] The name of the cluster firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startIpAddress] The start IP address of the cluster firewall rule. Must be IPv4 format.
  ServerGroupFirewallRuleArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> endIpAddress,
    pulumi.Output<String>? firewallRuleName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> startIpAddress,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'endIpAddress': endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'startIpAddress': startIpAddress,
    };
  }

  factory ServerGroupFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupFirewallRuleArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      endIpAddress: pulumi.Output.create<String>(map['endIpAddress'] as String),
      firewallRuleName: map['firewallRuleName'] == null ? null : pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startIpAddress: pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

