// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_mongo_cluster_firewall_rule_args_doc}
/// The set of arguments for MongoClusterFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_cluster_firewall_rule_args_doc}
class MongoClusterFirewallRuleArgs {
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> endIpAddress;
  /// The name of the mongo cluster firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [MongoClusterFirewallRuleArgs].
  /// [endIpAddress] The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [firewallRuleName] The name of the mongo cluster firewall rule.
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startIpAddress] The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  const MongoClusterFirewallRuleArgs({
    required this.endIpAddress,
    this.firewallRuleName,
    required this.mongoClusterName,
    required this.resourceGroupName,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
      'startIpAddress': startIpAddress,
    };
  }

  factory MongoClusterFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return MongoClusterFirewallRuleArgs(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      firewallRuleName: (() { final guardedValue = map['firewallRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoClusterName: pulumi.Input.fromValue(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}

