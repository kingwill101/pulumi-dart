// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action_forward_target_group.dart';

class ListenerRuleActionForward {
  /// Target groups that traffic matching the rule is forwarded to. See `targetGroups` Block for details.
  final pulumi.Input<List<ListenerRuleActionForwardTargetGroup>> targetGroups;

  /// Creates a new [ListenerRuleActionForward].
  /// [targetGroups] Target groups that traffic matching the rule is forwarded to. See `targetGroups` Block for details.
  const ListenerRuleActionForward({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroups': pulumi.Input.mapInputValue<List<ListenerRuleActionForwardTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<ListenerRuleActionForwardTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerRuleActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward(
      targetGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerRuleActionForwardTargetGroup>(map['targetGroups']!, (value) => ListenerRuleActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
