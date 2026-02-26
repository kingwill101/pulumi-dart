// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFirewallPolicy.
class GetFirewallPolicyArgs2 {
  final Input<String> firewallPolicy;

  GetFirewallPolicyArgs2({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs2(
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
    );
  }
}
