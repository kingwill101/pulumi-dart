// ignore_for_file: unused_element, unnecessary_cast

import 'rule_definition_response.dart';

/// Definition of StatelessRule
class StatelessRuleResponse {
  /// Property priority
  final int? priority;
  /// Property ruleDefinition
  final RuleDefinitionResponse? ruleDefinition;

  /// Creates a new [StatelessRuleResponse].
  /// [priority] Property priority
  /// [ruleDefinition] Property ruleDefinition
  StatelessRuleResponse({
    this.priority,
    this.ruleDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'ruleDefinition': ?ruleDefinition == null ? null : ruleDefinition!.toMap(),
    };
  }

  factory StatelessRuleResponse.fromMap(Map<String, dynamic> map) {
    return StatelessRuleResponse(
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleDefinition: map['ruleDefinition'] == null ? null : RuleDefinitionResponse.fromMap((map['ruleDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

