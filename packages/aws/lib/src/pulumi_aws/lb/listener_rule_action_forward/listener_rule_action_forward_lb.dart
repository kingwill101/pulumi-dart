// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_rule_action_forward_stickiness/listener_rule_action_forward_stickiness_lb.dart';
import '../listener_rule_action_forward_target_group/listener_rule_action_forward_target_group_lb.dart';

class ListenerRuleActionForwardLb {
  /// The target group stickiness for the rule.
  final ListenerRuleActionForwardStickinessLb? stickiness;

  /// One or more target group blocks.
  final List<ListenerRuleActionForwardTargetGroupLb> targetGroups;

  ListenerRuleActionForwardLb({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue.toMap();
    }
    map['targetGroups'] = pulumi.Input.encodeList<
        ListenerRuleActionForwardTargetGroupLb,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerRuleActionForwardLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForwardLb(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerRuleActionForwardStickinessLb.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups:
          pulumi.Input.decodeList<ListenerRuleActionForwardTargetGroupLb>(
              map['targetGroups'],
              (value) => ListenerRuleActionForwardTargetGroupLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
