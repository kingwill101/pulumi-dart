// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule to filter client IP address.
class IPRuleResponse {
  /// Action when client IP address is matched.
  final pulumi.Input<String> action;
  /// IPv4 address, or IPv4 address range in CIDR format.
  final pulumi.Input<String> value;

  /// Creates a new [IPRuleResponse].
  /// [action] Action when client IP address is matched.
  /// [value] IPv4 address, or IPv4 address range in CIDR format.
  IPRuleResponse({
    required this.action,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'value': value,
    };
  }

  factory IPRuleResponse.fromMap(Map<String, dynamic> map) {
    return IPRuleResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

