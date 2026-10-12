// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationConditionCondition {
  /// Expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  final pulumi.Input<String?>? expression;
  /// Name for the flow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationConditionCondition].
  /// [expression] Expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  /// [name] Name for the flow.
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
