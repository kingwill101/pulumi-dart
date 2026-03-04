// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionConnectionConfigurationData {
  /// The name of the output in the source node that the connection begins from.
  final pulumi.Input<String> sourceOutput;

  /// The name of the input in the target node that the connection ends at.
  final pulumi.Input<String> targetInput;

  /// Creates a new [AgentFlowDefinitionConnectionConfigurationData].
  /// [sourceOutput] The name of the output in the source node that the connection begins from.
  /// [targetInput] The name of the input in the target node that the connection ends at.
  AgentFlowDefinitionConnectionConfigurationData({
    required this.sourceOutput,
    required this.targetInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceOutput': sourceOutput,
      'targetInput': targetInput,
    };
  }

  factory AgentFlowDefinitionConnectionConfigurationData.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionConnectionConfigurationData(
      sourceOutput: pulumi.Input.fromValue(map['sourceOutput'] as String),
      targetInput: pulumi.Input.fromValue(map['targetInput'] as String),
    );
  }
}
