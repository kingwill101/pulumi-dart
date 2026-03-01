// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongocluster_get_firewall_rule_args_doc}
/// Arguments for getFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_get_firewall_rule_args_doc}
class GetFirewallRuleArgs {
  /// The name of the mongo cluster firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallRuleArgs].
  /// [firewallRuleName] The name of the mongo cluster firewall rule.
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFirewallRuleArgs({
    required pulumi.Output<String> firewallRuleName,
    required pulumi.Output<String> mongoClusterName,
    required pulumi.Output<String> resourceGroupName,
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

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      firewallRuleName: pulumi.Output.create<String>(map['firewallRuleName'] as String),
      mongoClusterName: pulumi.Output.create<String>(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

