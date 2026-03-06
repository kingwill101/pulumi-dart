// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_content_layer4_rule_list_condition_list.dart';

class BgpPolicyContentLayer4RuleList {
  /// 1 for observation 2 for blocking.
  final pulumi.Input<String> action;
  /// Matching Condition. See `condition_list` below.
  final pulumi.Input<List<BgpPolicyContentLayer4RuleListConditionList>> conditionLists;
  /// .
  final pulumi.Input<int> limited;
  /// 0 indicates that the condition is not met 1 indicates that the condition is met.
  final pulumi.Input<String> match;
  /// Char indicates a string match hex match.
  final pulumi.Input<String> method;
  /// Rule Name.
  final pulumi.Input<String> name;
  /// 1-100, priority, the lower the number, the higher the priority.
  final pulumi.Input<int> priority;

  /// Creates a new [BgpPolicyContentLayer4RuleList].
  /// [action] 1 for observation 2 for blocking.
  /// [conditionLists] Matching Condition. See `condition_list` below.
  /// [limited] .
  /// [match] 0 indicates that the condition is not met 1 indicates that the condition is met.
  /// [method] Char indicates a string match hex match.
  /// [name] Rule Name.
  /// [priority] 1-100, priority, the lower the number, the higher the priority.
  const BgpPolicyContentLayer4RuleList({
    required this.action,
    required this.conditionLists,
    required this.limited,
    required this.match,
    required this.method,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditionLists': pulumi.Input.mapInputValue<List<BgpPolicyContentLayer4RuleListConditionList>, List<Map<String, dynamic>>>(conditionLists, (value) => pulumi.Input.encodeList<BgpPolicyContentLayer4RuleListConditionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limited': limited,
      'match': match,
      'method': method,
      'name': name,
      'priority': priority,
    };
  }

  factory BgpPolicyContentLayer4RuleList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentLayer4RuleList(
      action: pulumi.Input.fromValue(map['action'] as String),
      conditionLists: pulumi.Input.fromValue(pulumi.Input.decodeList<BgpPolicyContentLayer4RuleListConditionList>(map['conditionLists']!, (value) => BgpPolicyContentLayer4RuleListConditionList.fromMap((value as Map).cast<String, dynamic>()))),
      limited: pulumi.Input.fromValue(map['limited'] as int),
      match: pulumi.Input.fromValue(map['match'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}

