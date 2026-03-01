// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action_forward_stickiness.dart';
import 'listener_rule_action_forward_target_group.dart';

class ListenerRuleActionForward {
  /// The target group stickiness for the rule.
  final ListenerRuleActionForwardStickiness? stickiness;

  /// One or more target group blocks.
  final List<ListenerRuleActionForwardTargetGroup> targetGroups;

  /// Creates a new [ListenerRuleActionForward].
  /// [stickiness] The target group stickiness for the rule.
  /// [targetGroups] One or more target group blocks.
  ListenerRuleActionForward({this.stickiness, required this.targetGroups});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stickiness': ?stickiness == null ? null : stickiness!.toMap(),
      'targetGroups':
          pulumi.Input.encodeList<
            ListenerRuleActionForwardTargetGroup,
            Map<String, dynamic>
          >(targetGroups, (value) => value.toMap()),
    };
  }

  factory ListenerRuleActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerRuleActionForwardStickiness.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>(),
            ),
      targetGroups:
          pulumi.Input.decodeList<ListenerRuleActionForwardTargetGroup>(
            map['targetGroups'],
            (value) => ListenerRuleActionForwardTargetGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
