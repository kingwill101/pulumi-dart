// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_target.dart';

class GetRulesRule {
  /// The description of rule.
  final pulumi.Input<String> description;
  /// The name of event bus.
  final pulumi.Input<String> eventBusName;
  /// The pattern to match interested events.
  final pulumi.Input<String> filterPattern;
  /// The ID of the Rule.
  final pulumi.Input<String> id;
  /// The name of rule.
  final pulumi.Input<String> ruleName;
  /// Rule status, either Enable or Disable.
  final pulumi.Input<String> status;
  /// The target for rule.
  final pulumi.Input<List<GetRulesRuleTarget>> targets;

  /// Creates a new [GetRulesRule].
  /// [description] The description of rule.
  /// [eventBusName] The name of event bus.
  /// [filterPattern] The pattern to match interested events.
  /// [id] The ID of the Rule.
  /// [ruleName] The name of rule.
  /// [status] Rule status, either Enable or Disable.
  /// [targets] The target for rule.
  GetRulesRule({
    required this.description,
    required this.eventBusName,
    required this.filterPattern,
    required this.id,
    required this.ruleName,
    required this.status,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'eventBusName': eventBusName,
      'filterPattern': filterPattern,
      'id': id,
      'ruleName': ruleName,
      'status': status,
      'targets': pulumi.Input.mapInputValue<List<GetRulesRuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetRulesRuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      description: (map['description'] as String).input(),
      eventBusName: (map['eventBusName'] as String).input(),
      filterPattern: (map['filterPattern'] as String).input(),
      id: (map['id'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      status: (map['status'] as String).input(),
      targets: (pulumi.Input.decodeList<GetRulesRuleTarget>(map['targets'], (value) => GetRulesRuleTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

