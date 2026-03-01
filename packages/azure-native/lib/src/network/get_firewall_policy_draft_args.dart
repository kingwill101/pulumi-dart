// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_policy_draft_args_doc}
/// Arguments for getFirewallPolicyDraft.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_policy_draft_args_doc}
class GetFirewallPolicyDraftArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallPolicyDraftArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  GetFirewallPolicyDraftArgs({
    required String firewallPolicyName,
    required String resourceGroupName,
  }) :
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallPolicyDraftArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyDraftArgs(
      firewallPolicyName: map['firewallPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

