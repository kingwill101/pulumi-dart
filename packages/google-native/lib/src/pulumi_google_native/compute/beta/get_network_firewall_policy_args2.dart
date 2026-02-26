// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkFirewallPolicy.
class GetNetworkFirewallPolicyArgs2 {
  final Input<String> firewallPolicy;
  final Input<String>? project;

  GetNetworkFirewallPolicyArgs2({
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

  factory GetNetworkFirewallPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyArgs2(
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
