// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallPolicy.
class GetFirewallPolicyComputeV1Args {
  final pulumi.Input<String> firewallPolicy;

  GetFirewallPolicyComputeV1Args({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyComputeV1Args(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
    );
  }
}
