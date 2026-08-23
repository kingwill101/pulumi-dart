// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_definition.dart';

/// Definition of StatelessRule
class StatelessRule {
  /// Property priority
  final pulumi.Input<int>? priority;
  /// Property ruleDefinition
  final pulumi.Input<RuleDefinition>? ruleDefinition;

  /// Creates a new [StatelessRule].
  /// [priority] Property priority
  /// [ruleDefinition] Property ruleDefinition
  const StatelessRule({
    this.priority,
    this.ruleDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'ruleDefinition': ?pulumi.Input.mapOptionalInputValue<RuleDefinition, Map<String, dynamic>>(ruleDefinition, (value) => value.toMap()),
    };
  }

  factory StatelessRule.fromMap(Map<String, dynamic> map) {
    return StatelessRule(
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleDefinition: (() { final guardedValue = map['ruleDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
