// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeOutput {
  /// A name for the output that you can reference.
  final pulumi.Input<String> name;
  /// The data type of the output. If the output doesn’t match this type at runtime, a validation error will be thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeOutput].
  /// [name] A name for the output that you can reference.
  /// [type] The data type of the output. If the output doesn’t match this type at runtime, a validation error will be thrown.
  const AgentFlowDefinitionNodeOutput({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory AgentFlowDefinitionNodeOutput.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeOutput(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
