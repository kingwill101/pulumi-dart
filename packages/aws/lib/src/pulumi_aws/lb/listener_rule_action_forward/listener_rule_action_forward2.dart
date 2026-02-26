// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action_forward_stickiness/listener_rule_action_forward_stickiness2.dart';
import '../listener_rule_action_forward_target_group/listener_rule_action_forward_target_group2.dart';

class ListenerRuleActionForward2 {
  /// The target group stickiness for the rule.
  final ListenerRuleActionForwardStickiness2? stickiness;

  /// One or more target group blocks.
  final List<ListenerRuleActionForwardTargetGroup2> targetGroups;

  ListenerRuleActionForward2({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue.toMap();
    }
    map['targetGroups'] = Input.encodeList<
        ListenerRuleActionForwardTargetGroup2,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerRuleActionForward2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward2(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerRuleActionForwardStickiness2.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups: Input.decodeList<ListenerRuleActionForwardTargetGroup2>(
          map['targetGroups'],
          (value) => ListenerRuleActionForwardTargetGroup2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
