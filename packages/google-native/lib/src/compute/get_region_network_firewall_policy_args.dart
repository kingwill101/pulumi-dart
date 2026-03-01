// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_network_firewall_policy_args_doc}
/// Arguments for getRegionNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_network_firewall_policy_args_doc}
class GetRegionNetworkFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkFirewallPolicyArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNetworkFirewallPolicyArgs({
    required String firewallPolicy,
    String? project,
    required String region,
  }) : firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyArgs(
      firewallPolicy: map['firewallPolicy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
