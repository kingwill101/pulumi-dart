// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action_forward_stickiness/listener_rule_action_forward_stickiness.dart';
import '../listener_rule_action_forward_target_group/listener_rule_action_forward_target_group.dart';

class ListenerRuleActionForward {
  /// The target group stickiness for the rule.
  final ListenerRuleActionForwardStickiness? stickiness;

  /// One or more target group blocks.
  final List<ListenerRuleActionForwardTargetGroup> targetGroups;

  ListenerRuleActionForward({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue.toMap();
    }
    map['targetGroups'] = Input.encodeList<ListenerRuleActionForwardTargetGroup,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerRuleActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerRuleActionForwardStickiness.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups: Input.decodeList<ListenerRuleActionForwardTargetGroup>(
          map['targetGroups'],
          (value) => ListenerRuleActionForwardTargetGroup.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
