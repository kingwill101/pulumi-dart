// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundIpRuleResponse {
  /// Action to perform based on the match or no match of the IpMask.
  final pulumi.Input<String>? action;
  /// IP Address in CIDR notation e.g., 10.0.0.0/8.
  final pulumi.Input<String>? ipMask;

  /// Creates a new [InboundIpRuleResponse].
  /// [action] Action to perform based on the match or no match of the IpMask.
  /// [ipMask] IP Address in CIDR notation e.g., 10.0.0.0/8.
  InboundIpRuleResponse({
    this.action,
    this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ?ipMask,
    };
  }

  factory InboundIpRuleResponse.fromMap(Map<String, dynamic> map) {
    return InboundIpRuleResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      ipMask: map['ipMask'] == null ? null : (map['ipMask']! as String).input(),
    );
  }
}

