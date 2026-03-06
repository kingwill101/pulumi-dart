// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP rule with specific IP or IP range in CIDR format.
class IPRule {
  /// The action of IP ACL rule.
  final pulumi.Input<String>? action;
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final pulumi.Input<String> iPAddressOrRange;

  /// Creates a new [IPRule].
  /// [action] The action of IP ACL rule.
  /// [iPAddressOrRange] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  const IPRule({
    this.action,
    required this.iPAddressOrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'iPAddressOrRange': iPAddressOrRange,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iPAddressOrRange: pulumi.Input.fromValue(map['iPAddressOrRange'] as String),
    );
  }
}

