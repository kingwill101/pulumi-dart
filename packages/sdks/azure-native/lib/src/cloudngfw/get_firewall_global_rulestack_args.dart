// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_firewall_global_rulestack_args_doc}
/// Arguments for getFirewallGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_firewall_global_rulestack_args_doc}
class GetFirewallGlobalRulestackArgs {
  /// Firewall resource name
  final pulumi.Input<String> firewallName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallGlobalRulestackArgs].
  /// [firewallName] Firewall resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFirewallGlobalRulestackArgs({
    required pulumi.Output<String> firewallName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      firewallName = pulumi.Input.asInput<String>(firewallName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallName': firewallName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallGlobalRulestackArgs(
      firewallName: pulumi.Output.create<String>(map['firewallName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

