// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeInput {
  /// How input data flows between iterations in a DoWhile loop.
  final pulumi.Input<String?>? category;
  /// Expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  final pulumi.Input<String> expression;
  /// Name for the flow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeInput].
  /// [category] How input data flows between iterations in a DoWhile loop.
  /// [expression] Expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  /// [name] Name for the flow.
  /// [type] Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  const AgentFlowDefinitionNodeInput({
    this.category,
    required this.expression,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'expression': expression,
      'name': name,
      'type': type,
    };
  }

  factory AgentFlowDefinitionNodeInput.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeInput(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
