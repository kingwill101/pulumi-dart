// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionNetworkFirewallPolicy.
class GetRegionNetworkFirewallPolicyArgs3 {
  final Input<String> firewallPolicy;
  final Input<String>? project;
  final Input<String> region;

  GetRegionNetworkFirewallPolicyArgs3({
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

  factory GetRegionNetworkFirewallPolicyArgs3.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyArgs3(
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
