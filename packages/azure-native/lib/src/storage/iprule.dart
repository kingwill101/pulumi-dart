// ignore_for_file: unused_element, unnecessary_cast

import 'action.dart';

/// IP rule with specific IP or IP range in CIDR format.
class IPRule {
  /// The action of IP ACL rule.
  final Action? action;
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final String iPAddressOrRange;

  /// Creates a new [IPRule].
  /// [action] The action of IP ACL rule.
  /// [iPAddressOrRange] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRule({
    this.action,
    required this.iPAddressOrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.value,
      'iPAddressOrRange': iPAddressOrRange,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: map['action'] == null ? null : Action.fromValue(map['action'] as String),
      iPAddressOrRange: map['iPAddressOrRange'] as String,
    );
  }
}

