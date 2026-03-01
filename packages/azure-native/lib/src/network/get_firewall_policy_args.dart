// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_policy_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_policy_args_doc}
class GetFirewallPolicyArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallPolicyArgs].
  /// [expand] Expands referenced resources.
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  GetFirewallPolicyArgs({
    String? expand,
    required String firewallPolicyName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'firewallPolicyName': firewallPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      firewallPolicyName: map['firewallPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

