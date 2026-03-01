// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_variable.dart';
import 'match_condition.dart';

/// Defines contents of a web application rule
class CustomRule {
  /// Describes what action to be applied when rule matches.
  final String action;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final String? enabledState;
  /// Describes the list of variables to group the rate limit requests
  final List<GroupByVariable>? groupBy;
  /// List of match conditions.
  final List<MatchCondition> matchConditions;
  /// Describes the name of the rule.
  final String? name;
  /// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  final int priority;
  /// Time window for resetting the rate limit count. Default is 1 minute.
  final int? rateLimitDurationInMinutes;
  /// Number of allowed requests per client within the time window.
  final int? rateLimitThreshold;
  /// Describes type of rule.
  final String ruleType;

  /// Creates a new [CustomRule].
  /// [action] Describes what action to be applied when rule matches.
  /// [enabledState] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [groupBy] Describes the list of variables to group the rate limit requests
  /// [matchConditions] List of match conditions.
  /// [name] Describes the name of the rule.
  /// [priority] Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  /// [rateLimitDurationInMinutes] Time window for resetting the rate limit count. Default is 1 minute.
  /// [rateLimitThreshold] Number of allowed requests per client within the time window.
  /// [ruleType] Describes type of rule.
  CustomRule({
    required this.action,
    this.enabledState,
    this.groupBy,
    required this.matchConditions,
    this.name,
    required this.priority,
    this.rateLimitDurationInMinutes,
    this.rateLimitThreshold,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabledState': ?enabledState,
      'groupBy': ?groupBy == null ? null : pulumi.Input.encodeList<GroupByVariable, Map<String, dynamic>>(groupBy!, (value) => value.toMap()),
      'matchConditions': pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(matchConditions, (value) => value.toMap()),
      'name': ?name,
      'priority': priority,
      'rateLimitDurationInMinutes': ?rateLimitDurationInMinutes,
      'rateLimitThreshold': ?rateLimitThreshold,
      'ruleType': ruleType,
    };
  }

  factory CustomRule.fromMap(Map<String, dynamic> map) {
    return CustomRule(
      action: map['action'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      groupBy: map['groupBy'] == null ? null : pulumi.Input.decodeList<GroupByVariable>(map['groupBy'], (value) => GroupByVariable.fromMap((value as Map).cast<String, dynamic>())),
      matchConditions: pulumi.Input.decodeList<MatchCondition>(map['matchConditions'], (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      rateLimitDurationInMinutes: map['rateLimitDurationInMinutes'] == null ? null : map['rateLimitDurationInMinutes'] as int,
      rateLimitThreshold: map['rateLimitThreshold'] == null ? null : map['rateLimitThreshold'] as int,
      ruleType: map['ruleType'] as String,
    );
  }
}

