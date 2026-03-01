// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_action_forward_stickiness.dart';
import 'get_listener_rule_action_forward_target_group.dart';

class GetListenerRuleActionForward {
  /// Target group stickiness for the rule.
  /// Detailed below.
  final List<GetListenerRuleActionForwardStickiness>? stickinesses;
  /// Set of target groups for the action.
  /// Detailed below.
  final List<GetListenerRuleActionForwardTargetGroup>? targetGroups;

  /// Creates a new [GetListenerRuleActionForward].
  /// [stickinesses] Target group stickiness for the rule.
  /// [targetGroups] Set of target groups for the action.
  GetListenerRuleActionForward({
    this.stickinesses,
    this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stickinesses': ?stickinesses == null ? null : pulumi.Input.encodeList<GetListenerRuleActionForwardStickiness, Map<String, dynamic>>(stickinesses!, (value) => value.toMap()),
      'targetGroups': ?targetGroups == null ? null : pulumi.Input.encodeList<GetListenerRuleActionForwardTargetGroup, Map<String, dynamic>>(targetGroups!, (value) => value.toMap()),
    };
  }

  factory GetListenerRuleActionForward.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionForward(
      stickinesses: map['stickinesses'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionForwardStickiness>(map['stickinesses'], (value) => GetListenerRuleActionForwardStickiness.fromMap((value as Map).cast<String, dynamic>())),
      targetGroups: map['targetGroups'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionForwardTargetGroup>(map['targetGroups'], (value) => GetListenerRuleActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

