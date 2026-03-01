// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_content_layer4_rule_list_condition_list.dart';

class BgpPolicyContentLayer4RuleList {
  /// 1 for observation 2 for blocking.
  final String action;
  /// Matching Condition. See `condition_list` below.
  final List<BgpPolicyContentLayer4RuleListConditionList> conditionLists;
  /// .
  final int limited;
  /// 0 indicates that the condition is not met 1 indicates that the condition is met.
  final String match;
  /// Char indicates a string match hex match.
  final String method;
  /// Rule Name.
  final String name;
  /// 1-100, priority, the lower the number, the higher the priority.
  final int priority;

  /// Creates a new [BgpPolicyContentLayer4RuleList].
  /// [action] 1 for observation 2 for blocking.
  /// [conditionLists] Matching Condition. See `condition_list` below.
  /// [limited] .
  /// [match] 0 indicates that the condition is not met 1 indicates that the condition is met.
  /// [method] Char indicates a string match hex match.
  /// [name] Rule Name.
  /// [priority] 1-100, priority, the lower the number, the higher the priority.
  BgpPolicyContentLayer4RuleList({
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
      'conditionLists': pulumi.Input.encodeList<BgpPolicyContentLayer4RuleListConditionList, Map<String, dynamic>>(conditionLists, (value) => value.toMap()),
      'limited': limited,
      'match': match,
      'method': method,
      'name': name,
      'priority': priority,
    };
  }

  factory BgpPolicyContentLayer4RuleList.fromMap(Map<String, dynamic> map) {
    return BgpPolicyContentLayer4RuleList(
      action: map['action'] as String,
      conditionLists: pulumi.Input.decodeList<BgpPolicyContentLayer4RuleListConditionList>(map['conditionLists'], (value) => BgpPolicyContentLayer4RuleListConditionList.fromMap((value as Map).cast<String, dynamic>())),
      limited: map['limited'] as int,
      match: map['match'] as String,
      method: map['method'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

