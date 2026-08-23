// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_network_firewall_rule_group_args_doc}
/// Arguments for getNetworkFirewallRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_network_firewall_rule_group_args_doc}
class GetNetworkFirewallRuleGroupArgs {
  /// Name of NetworkFirewallRuleGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFirewallRuleGroupArgs].
  /// [name] Name of NetworkFirewallRuleGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkFirewallRuleGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFirewallRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallRuleGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
