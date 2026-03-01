// ignore_for_file: unused_element, unnecessary_cast

import 'rule_definition.dart';

/// Definition of StatelessRule
class StatelessRule {
  /// Property priority
  final int? priority;
  /// Property ruleDefinition
  final RuleDefinition? ruleDefinition;

  /// Creates a new [StatelessRule].
  /// [priority] Property priority
  /// [ruleDefinition] Property ruleDefinition
  StatelessRule({
    this.priority,
    this.ruleDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'ruleDefinition': ?ruleDefinition == null ? null : ruleDefinition!.toMap(),
    };
  }

  factory StatelessRule.fromMap(Map<String, dynamic> map) {
    return StatelessRule(
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleDefinition: map['ruleDefinition'] == null ? null : RuleDefinition.fromMap((map['ruleDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

