// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_action_response.dart';
import 'rules_engine_match_condition_response.dart';

/// Contains a list of match conditions, and an action on how to modify the request/response. If multiple rules match, the actions from one rule that conflict with a previous rule overwrite for a singular action, or append in the case of headers manipulation.
class RulesEngineRuleResponse {
  /// Actions to perform on the request and response if all of the match conditions are met.
  final pulumi.Input<RulesEngineActionResponse> action;
  /// A list of match conditions that must meet in order for the actions of this rule to run. Having no match conditions means the actions will always run.
  final pulumi.Input<List<RulesEngineMatchConditionResponse>?>? matchConditions;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  final pulumi.Input<String?>? matchProcessingBehavior;
  /// A name to refer to this specific rule.
  final pulumi.Input<String> name;
  /// A priority assigned to this rule.
  final pulumi.Input<int> priority;

  /// Creates a new [RulesEngineRuleResponse].
  /// [action] Actions to perform on the request and response if all of the match conditions are met.
  /// [matchConditions] A list of match conditions that must meet in order for the actions of this rule to run. Having no match conditions means the actions will always run.
  /// [matchProcessingBehavior] If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  /// [name] A name to refer to this specific rule.
  /// [priority] A priority assigned to this rule.
  const RulesEngineRuleResponse({
    required this.action,
    this.matchConditions,
    this.matchProcessingBehavior,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RulesEngineActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineMatchConditionResponse>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<RulesEngineMatchConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchProcessingBehavior': ?matchProcessingBehavior,
      'name': name,
      'priority': priority,
    };
  }

  factory RulesEngineRuleResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleResponse(
      action: pulumi.Input.fromValue(RulesEngineActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesEngineMatchConditionResponse>(guardedValue, (value) => RulesEngineMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchProcessingBehavior: (() { final guardedValue = map['matchProcessingBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
    );
  }
}
