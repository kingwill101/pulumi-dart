// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeOutput {
  /// A name for the flow.
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeOutput].
  /// [name] A name for the flow.
  /// [type] Required.
  AgentFlowDefinitionNodeOutput({
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
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

