// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action_forward_target_group/listener_rule_action_forward_target_group3.dart';

class ListenerRuleActionForward3 {
  /// The target groups. Traffic matching the rule is forwarded to the specified target groups. With forward actions, you can assign a weight that controls the prioritization and selection of each target group. This means that requests are distributed to individual target groups based on their weights. For example, if two target groups have the same weight, each target group receives half of the traffic.
  ///
  /// The default value is 1 with maximum number of 2. If only one target group is provided, there is no need to set the weight; 100% of traffic will go to that target group.
  final List<ListenerRuleActionForwardTargetGroup3> targetGroups;

  ListenerRuleActionForward3({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroups'] = Input.encodeList<
        ListenerRuleActionForwardTargetGroup3,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerRuleActionForward3.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForward3(
      targetGroups: Input.decodeList<ListenerRuleActionForwardTargetGroup3>(
          map['targetGroups'],
          (value) => ListenerRuleActionForwardTargetGroup3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
