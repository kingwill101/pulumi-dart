// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_action_fixed_response/listener_rule_action_fixed_response3.dart';
import '../listener_rule_action_forward/listener_rule_action_forward3.dart';

class ListenerRuleAction3 {
  /// Describes the rule action that returns a custom HTTP response.
  /// See `fixed_response` Block for details.
  final ListenerRuleActionFixedResponse3? fixedResponse;

  /// The forward action. Traffic that matches the rule is forwarded to the specified target groups.
  /// See `forward` Block for details.
  final ListenerRuleActionForward3? forward;

  ListenerRuleAction3({
    this.fixedResponse,
    this.forward,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedResponseValue = fixedResponse;
    if (fixedResponseValue != null) {
      map['fixedResponse'] = fixedResponseValue.toMap();
    }
    final forwardValue = forward;
    if (forwardValue != null) {
      map['forward'] = forwardValue.toMap();
    }
    return map;
  }

  factory ListenerRuleAction3.fromMap(Map<String, dynamic> map) {
    return ListenerRuleAction3(
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerRuleActionFixedResponse3.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forward: map['forward'] == null
          ? null
          : ListenerRuleActionForward3.fromMap(
              (map['forward'] as Map).cast<String, dynamic>()),
    );
  }
}
