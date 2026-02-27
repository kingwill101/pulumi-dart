// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFirewallPolicy.
class GetFirewallPolicyArgs3 {
  final Input<String> firewallPolicy;

  GetFirewallPolicyArgs3({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs3(
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
    );
  }
}
