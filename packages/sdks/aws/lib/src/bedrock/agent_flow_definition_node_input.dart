// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeInput {
  /// How input data flows between iterations in a DoWhile loop.
  final pulumi.Input<String>? category;
  final pulumi.Input<String> expression;

  /// A name for the flow.
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeInput].
  /// [category] How input data flows between iterations in a DoWhile loop.
  /// [expression] Required.
  /// [name] A name for the flow.
  /// [type] Required.
  AgentFlowDefinitionNodeInput({
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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
