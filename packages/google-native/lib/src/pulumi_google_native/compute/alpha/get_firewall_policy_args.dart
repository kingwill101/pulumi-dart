// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallPolicy.
class GetFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;

  GetFirewallPolicyArgs({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
    );
  }
}
