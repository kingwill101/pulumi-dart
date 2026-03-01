// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_target.dart';

class GetRulesRule {
  /// The description of rule.
  final String description;
  /// The name of event bus.
  final String eventBusName;
  /// The pattern to match interested events.
  final String filterPattern;
  /// The ID of the Rule.
  final String id;
  /// The name of rule.
  final String ruleName;
  /// Rule status, either Enable or Disable.
  final String status;
  /// The target for rule.
  final List<GetRulesRuleTarget> targets;

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
      'targets': pulumi.Input.encodeList<GetRulesRuleTarget, Map<String, dynamic>>(targets, (value) => value.toMap()),
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      description: map['description'] as String,
      eventBusName: map['eventBusName'] as String,
      filterPattern: map['filterPattern'] as String,
      id: map['id'] as String,
      ruleName: map['ruleName'] as String,
      status: map['status'] as String,
      targets: pulumi.Input.decodeList<GetRulesRuleTarget>(map['targets'], (value) => GetRulesRuleTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

