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
  GetMongoClusterFirewallRuleArgs({
    required String firewallRuleName,
    required String mongoClusterName,
    required String resourceGroupName,
  }) :
      firewallRuleName = pulumi.Input.asInput<String>(firewallRuleName),
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': firewallRuleName,
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoClusterFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterFirewallRuleArgs(
      firewallRuleName: map['firewallRuleName'] as String,
      mongoClusterName: map['mongoClusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

