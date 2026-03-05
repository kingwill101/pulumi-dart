// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_variable_response.dart';
import 'match_condition_response.dart';

/// Defines contents of a web application rule
class CustomRuleResponse {
  /// Describes what action to be applied when rule matches.
  final pulumi.Input<String> action;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final pulumi.Input<String>? enabledState;
  /// Describes the list of variables to group the rate limit requests
  final pulumi.Input<List<GroupByVariableResponse>>? groupBy;
  /// List of match conditions.
  final pulumi.Input<List<MatchConditionResponse>> matchConditions;
  /// Describes the name of the rule.
  final pulumi.Input<String>? name;
  /// Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  final pulumi.Input<int> priority;
  /// Time window for resetting the rate limit count. Default is 1 minute.
  final pulumi.Input<int>? rateLimitDurationInMinutes;
  /// Number of allowed requests per client within the time window.
  final pulumi.Input<int>? rateLimitThreshold;
  /// Describes type of rule.
  final pulumi.Input<String> ruleType;

  /// Creates a new [CustomRuleResponse].
  /// [action] Describes what action to be applied when rule matches.
  /// [enabledState] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [groupBy] Describes the list of variables to group the rate limit requests
  /// [matchConditions] List of match conditions.
  /// [name] Describes the name of the rule.
  /// [priority] Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
  /// [rateLimitDurationInMinutes] Time window for resetting the rate limit count. Default is 1 minute.
  /// [rateLimitThreshold] Number of allowed requests per client within the time window.
  /// [ruleType] Describes type of rule.
  CustomRuleResponse({
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
      'groupBy': ?pulumi.Input.mapOptionalInputValue<List<GroupByVariableResponse>, List<Map<String, dynamic>>>(groupBy, (value) => pulumi.Input.encodeList<GroupByVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConditions': pulumi.Input.mapInputValue<List<MatchConditionResponse>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': priority,
      'rateLimitDurationInMinutes': ?rateLimitDurationInMinutes,
      'rateLimitThreshold': ?rateLimitThreshold,
      'ruleType': ruleType,
    };
  }

  factory CustomRuleResponse.fromMap(Map<String, dynamic> map) {
    return CustomRuleResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupBy: (() { final guardedValue = map['groupBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupByVariableResponse>(guardedValue, (value) => GroupByVariableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<MatchConditionResponse>(map['matchConditions']!, (value) => MatchConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitDurationInMinutes: (() { final guardedValue = map['rateLimitDurationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rateLimitThreshold: (() { final guardedValue = map['rateLimitThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

