// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_definition_response.dart';

/// Definition of StatelessRule
class StatelessRuleResponse {
  /// Property priority
  final pulumi.Input<int>? priority;
  /// Property ruleDefinition
  final pulumi.Input<RuleDefinitionResponse>? ruleDefinition;

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
      'ruleDefinition': ?pulumi.Input.mapOptionalInputValue<RuleDefinitionResponse, Map<String, dynamic>>(ruleDefinition, (value) => value.toMap()),
    };
  }

  factory StatelessRuleResponse.fromMap(Map<String, dynamic> map) {
    return StatelessRuleResponse(
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleDefinition: (() { final guardedValue = map['ruleDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

