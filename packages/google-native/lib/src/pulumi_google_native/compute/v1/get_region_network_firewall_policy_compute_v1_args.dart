// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionNetworkFirewallPolicy.
class GetRegionNetworkFirewallPolicyComputeV1Args {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionNetworkFirewallPolicyComputeV1Args({
    required this.firewallPolicy,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionNetworkFirewallPolicyComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyComputeV1Args(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
