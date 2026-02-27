// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_action_fixed_response/listener_rule_action_fixed_response_vpclattice.dart';
import '../listener_rule_action_forward/listener_rule_action_forward_vpclattice.dart';

class ListenerRuleActionVpclattice {
  /// Describes the rule action that returns a custom HTTP response.
  /// See `fixed_response` Block for details.
  final ListenerRuleActionFixedResponseVpclattice? fixedResponse;

  /// The forward action. Traffic that matches the rule is forwarded to the specified target groups.
  /// See `forward` Block for details.
  final ListenerRuleActionForwardVpclattice? forward;

  ListenerRuleActionVpclattice({
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

  factory ListenerRuleActionVpclattice.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionVpclattice(
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerRuleActionFixedResponseVpclattice.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forward: map['forward'] == null
          ? null
          : ListenerRuleActionForwardVpclattice.fromMap(
              (map['forward'] as Map).cast<String, dynamic>()),
    );
  }
}
