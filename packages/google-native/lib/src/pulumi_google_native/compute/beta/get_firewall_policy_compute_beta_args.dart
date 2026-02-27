// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallPolicy.
class GetFirewallPolicyComputeBetaArgs {
  final pulumi.Input<String> firewallPolicy;

  GetFirewallPolicyComputeBetaArgs({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallPolicy'] = firewallPolicy;
    return map;
  }

  factory GetFirewallPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyComputeBetaArgs(
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
    );
  }
}
