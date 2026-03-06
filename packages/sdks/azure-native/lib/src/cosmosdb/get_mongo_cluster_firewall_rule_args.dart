// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_cluster_firewall_rule_args_doc}
/// Arguments for getMongoClusterFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_cluster_firewall_rule_args_doc}
class GetMongoClusterFirewallRuleArgs {
  /// The name of the mongo cluster firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoClusterFirewallRuleArgs].
  /// [firewallRuleName] The name of the mongo cluster firewall rule.
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMongoClusterFirewallRuleArgs({
    required this.firewallRuleName,
    required this.mongoClusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': firewallRuleName,
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoClusterFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterFirewallRuleArgs(
      firewallRuleName: pulumi.Input.fromValue(map['firewallRuleName'] as String),
      mongoClusterName: pulumi.Input.fromValue(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

