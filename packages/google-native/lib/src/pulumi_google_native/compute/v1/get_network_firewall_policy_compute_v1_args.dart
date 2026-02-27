// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkFirewallPolicy.
class GetNetworkFirewallPolicyComputeV1Args {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  GetNetworkFirewallPolicyComputeV1Args({
    required this.firewallPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkFirewallPolicyComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyComputeV1Args(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
