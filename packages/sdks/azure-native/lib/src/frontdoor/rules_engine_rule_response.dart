// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_action_response.dart';
import 'rules_engine_match_condition_response.dart';

/// Contains a list of match conditions, and an action on how to modify the request/response. If multiple rules match, the actions from one rule that conflict with a previous rule overwrite for a singular action, or append in the case of headers manipulation.
class RulesEngineRuleResponse {
  /// Actions to perform on the request and response if all of the match conditions are met.
  final RulesEngineActionResponse action;
  /// A list of match conditions that must meet in order for the actions of this rule to run. Having no match conditions means the actions will always run.
  final List<RulesEngineMatchConditionResponse>? matchConditions;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  final String? matchProcessingBehavior;
  /// A name to refer to this specific rule.
  final String name;
  /// A priority assigned to this rule.
  final int priority;

  /// Creates a new [RulesEngineRuleResponse].
  /// [action] Actions to perform on the request and response if all of the match conditions are met.
  /// [matchConditions] A list of match conditions that must meet in order for the actions of this rule to run. Having no match conditions means the actions will always run.
  /// [matchProcessingBehavior] If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  /// [name] A name to refer to this specific rule.
  /// [priority] A priority assigned to this rule.
  RulesEngineRuleResponse({
    required this.action,
    this.matchConditions,
    this.matchProcessingBehavior,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<RulesEngineMatchConditionResponse, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'matchProcessingBehavior': ?matchProcessingBehavior,
      'name': name,
      'priority': priority,
    };
  }

  factory RulesEngineRuleResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleResponse(
      action: RulesEngineActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<RulesEngineMatchConditionResponse>(map['matchConditions'], (value) => RulesEngineMatchConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchProcessingBehavior: map['matchProcessingBehavior'] == null ? null : map['matchProcessingBehavior'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

