// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_action.dart';

/// Rule to filter client IP address.
class IPRule {
  /// Action when client IP address is matched.
  final pulumi.Input<IPRuleAction> action;
  /// IPv4 address, or IPv4 address range in CIDR format.
  final pulumi.Input<String> value;

  /// Creates a new [IPRule].
  /// [action] Action when client IP address is matched.
  /// [value] IPv4 address, or IPv4 address range in CIDR format.
  const IPRule({
    required this.action,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<IPRuleAction, String>(action, (value) => value.wireValue),
      'value': value,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      action: pulumi.Input.fromValue(IPRuleAction.fromValue(map['action']! as String)),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

