// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration.dart';
import 'agent_flow_definition_node_input.dart';
import 'agent_flow_definition_node_output.dart';

class AgentFlowDefinitionNode {
  /// Contains configurations for the node. See Node Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfiguration>? configuration;
  /// A list of objects containing information about an input into the node. See Node Input for more information.
  final pulumi.Input<List<AgentFlowDefinitionNodeInput>>? inputs;
  /// A name for the node.
  final pulumi.Input<String> name;
  /// A list of objects containing information about an output from the node. See Node Output for more information.
  final pulumi.Input<List<AgentFlowDefinitionNodeOutput>>? outputs;
  /// Type of node. This value must match the name of the key you provide in `configuration`. Valid values: `Agent`, `Collector`, `Condition`, `InlineCode`, `Input`, `Iterator`, `KnowledgeBase`, `LambdaFunction`, `Lex`, `Output`, `Prompt`, `Retrieval`, `Storage`
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNode].
  /// [configuration] Contains configurations for the node. See Node Configuration for more information.
  /// [inputs] A list of objects containing information about an input into the node. See Node Input for more information.
  /// [name] A name for the node.
  /// [outputs] A list of objects containing information about an output from the node. See Node Output for more information.
  /// [type] Type of node. This value must match the name of the key you provide in `configuration`. Valid values: `Agent`, `Collector`, `Condition`, `InlineCode`, `Input`, `Iterator`, `KnowledgeBase`, `LambdaFunction`, `Lex`, `Output`, `Prompt`, `Retrieval`, `Storage`
  const AgentFlowDefinitionNode({
    this.configuration,
    this.inputs,
    required this.name,
    this.outputs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AgentFlowDefinitionNode.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNode(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeInput>(guardedValue, (value) => AgentFlowDefinitionNodeInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeOutput>(guardedValue, (value) => AgentFlowDefinitionNodeOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
