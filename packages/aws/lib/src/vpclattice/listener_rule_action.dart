// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_action_fixed_response.dart';
import 'listener_rule_action_forward.dart';

class ListenerRuleAction {
  /// Describes the rule action that returns a custom HTTP response.
  /// See `fixed_response` Block for details.
  final ListenerRuleActionFixedResponse? fixedResponse;

  /// The forward action. Traffic that matches the rule is forwarded to the specified target groups.
  /// See `forward` Block for details.
  final ListenerRuleActionForward? forward;

  /// Creates a new [ListenerRuleAction].
  /// [fixedResponse] Describes the rule action that returns a custom HTTP response.
  /// [forward] The forward action. Traffic that matches the rule is forwarded to the specified target groups.
  ListenerRuleAction({this.fixedResponse, this.forward});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedResponse': ?fixedResponse == null ? null : fixedResponse!.toMap(),
      'forward': ?forward == null ? null : forward!.toMap(),
    };
  }

  factory ListenerRuleAction.fromMap(Map<String, dynamic> map) {
    return ListenerRuleAction(
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerRuleActionFixedResponse.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>(),
            ),
      forward: map['forward'] == null
          ? null
          : ListenerRuleActionForward.fromMap(
              (map['forward'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
