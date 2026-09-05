// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationConditionCondition {
  final pulumi.Input<String?>? expression;
  /// A name for the flow.
  final pulumi.Input<String> name;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationConditionCondition].
  /// [expression] Optional.
  /// [name] A name for the flow.
  const AgentFlowDefinitionNodeConfigurationConditionCondition({
    this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'name': name,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationConditionCondition.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationConditionCondition(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
