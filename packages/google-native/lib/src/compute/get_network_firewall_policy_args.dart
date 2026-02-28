// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_firewall_policy_args_doc}
/// Arguments for getNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_firewall_policy_args_doc}
class GetNetworkFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkFirewallPolicyArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  GetNetworkFirewallPolicyArgs({
    required String firewallPolicy,
    String? project,
  }) :
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
    };
  }

  factory GetNetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyArgs(
      firewallPolicy: map['firewallPolicy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

