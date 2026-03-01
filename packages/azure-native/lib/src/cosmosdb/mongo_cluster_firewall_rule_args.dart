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
  MongoClusterFirewallRuleArgs({
    required String endIpAddress,
    String? firewallRuleName,
    required String mongoClusterName,
    required String resourceGroupName,
    required String startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

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
      endIpAddress: map['endIpAddress'] as String,
      firewallRuleName: map['firewallRuleName'] == null ? null : map['firewallRuleName'] as String,
      mongoClusterName: map['mongoClusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

