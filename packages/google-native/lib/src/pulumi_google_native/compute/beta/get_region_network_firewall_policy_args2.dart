// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionNetworkFirewallPolicy.
class GetRegionNetworkFirewallPolicyArgs2 {
  final Input<String> firewallPolicy;
  final Input<String>? project;
  final Input<String> region;

  GetRegionNetworkFirewallPolicyArgs2({
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

  factory GetRegionNetworkFirewallPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyArgs2(
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
