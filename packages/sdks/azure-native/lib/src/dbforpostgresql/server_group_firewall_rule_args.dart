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
  final pulumi.Input<String?>? firewallRuleName;
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
  const ServerGroupFirewallRuleArgs({
    required this.clusterName,
    required this.endIpAddress,
    this.firewallRuleName,
    required this.resourceGroupName,
    required this.startIpAddress,
  });

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
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      firewallRuleName: (() { final guardedValue = map['firewallRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
