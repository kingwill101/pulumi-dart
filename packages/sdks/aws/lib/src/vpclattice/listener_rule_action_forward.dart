// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action_forward_target_group.dart';

class ListenerRuleActionForward {
  /// The target groups. Traffic matching the rule is forwarded to the specified target groups. With forward actions, you can assign a weight that controls the prioritization and selection of each target group. This means that requests are distributed to individual target groups based on their weights. For example, if two target groups have the same weight, each target group receives half of the traffic.
  ///
  /// The default value is 1 with maximum number of 2. If only one target group is provided, there is no need to set the weight; 100% of traffic will go to that target group.
  final pulumi.Input<List<ListenerRuleActionForwardTargetGroup>> targetGroups;

  /// Creates a new [ListenerRuleActionForward].
  /// [targetGroups] The target groups. Traffic matching the rule is forwarded to the specified target groups. With forward actions, you can assign a weight that controls the prioritization and selection of each target group. This means that requests are distributed to individual target groups based on their weights. For example, if two target groups have the same weight, each target group receives half of the traffic.
  ListenerRuleActionForward({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroups': pulumi.Input.mapInputValue<List<ListenerRuleActionForwardTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<ListenerRuleActionForwardTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerRuleActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward(
      targetGroups: (pulumi.Input.decodeList<ListenerRuleActionForwardTargetGroup>(map['targetGroups']!, (value) => ListenerRuleActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

