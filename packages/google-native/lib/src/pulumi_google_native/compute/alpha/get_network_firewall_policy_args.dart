// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkFirewallPolicy.
class GetNetworkFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  GetNetworkFirewallPolicyArgs({
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

  factory GetNetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyArgs(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
