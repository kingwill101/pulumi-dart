// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeInput {
  /// How input data flows between iterations in a DoWhile loop.
  final pulumi.Input<String>? category;
  /// An expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  final pulumi.Input<String> expression;
  /// A name for the input that you can reference.
  final pulumi.Input<String> name;
  /// The data type of the input. If the input doesn’t match this type at runtime, a validation error will be thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeInput].
  /// [category] How input data flows between iterations in a DoWhile loop.
  /// [expression] An expression that formats the input for the node. For an explanation of how to create expressions, see [Expressions in Prompt flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).
  /// [name] A name for the input that you can reference.
  /// [type] The data type of the input. If the input doesn’t match this type at runtime, a validation error will be thrown.
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
