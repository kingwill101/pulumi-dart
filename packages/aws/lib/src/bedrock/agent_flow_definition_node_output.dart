// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeOutput {
  /// A name for the flow.
  final String name;
  final String type;

  /// Creates a new [AgentFlowDefinitionNodeOutput].
  /// [name] A name for the flow.
  /// [type] Required.
  AgentFlowDefinitionNodeOutput({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory AgentFlowDefinitionNodeOutput.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeOutput(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
