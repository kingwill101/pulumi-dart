// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_firewall_policy_compute_beta_args_doc}
/// Arguments for getNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_firewall_policy_compute_beta_args_doc}
class GetNetworkFirewallPolicyComputeBetaArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkFirewallPolicyComputeBetaArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  GetNetworkFirewallPolicyComputeBetaArgs({
    required String firewallPolicy,
    String? project,
  })  : firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkFirewallPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyComputeBetaArgs(
      firewallPolicy: map['firewallPolicy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
