// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_policy_compute_beta_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_policy_compute_beta_args_doc}
class GetFirewallPolicyComputeBetaArgs {
  final pulumi.Input<String> firewallPolicy;

  /// Creates a new [GetFirewallPolicyComputeBetaArgs].
  /// [firewallPolicy] Required.
  GetFirewallPolicyComputeBetaArgs({
    required String firewallPolicy,
  }) : firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyComputeBetaArgs(
      firewallPolicy: map['firewallPolicy'] as String,
    );
  }
}
