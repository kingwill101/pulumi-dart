// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration.dart';
import 'agent_flow_definition_node_input.dart';
import 'agent_flow_definition_node_output.dart';

class AgentFlowDefinitionNode {
  /// Contains configurations for the node. See Node Configuration for more information.
  final AgentFlowDefinitionNodeConfiguration? configuration;
  /// A list of objects containing information about an input into the node. See Node Input for more information.
  final List<AgentFlowDefinitionNodeInput>? inputs;
  /// A name for the node.
  final String name;
  /// A list of objects containing information about an output from the node. See Node Output for more information.
  final List<AgentFlowDefinitionNodeOutput>? outputs;
  /// The type of node. This value must match the name of the key that you provide in the configuration. Valid values: `Agent`, `Collector`, `Condition`, `Input`, `Iterator`, `KnowledgeBase`, `LambdaFunction`, `Lex`, `Output`, `Prompt`, `Retrieval`, `Storage`
  final String type;

  /// Creates a new [AgentFlowDefinitionNode].
  /// [configuration] Contains configurations for the node. See Node Configuration for more information.
  /// [inputs] A list of objects containing information about an input into the node. See Node Input for more information.
  /// [name] A name for the node.
  /// [outputs] A list of objects containing information about an output from the node. See Node Output for more information.
  /// [type] The type of node. This value must match the name of the key that you provide in the configuration. Valid values: `Agent`, `Collector`, `Condition`, `Input`, `Iterator`, `KnowledgeBase`, `LambdaFunction`, `Lex`, `Output`, `Prompt`, `Retrieval`, `Storage`
  AgentFlowDefinitionNode({
    this.configuration,
    this.inputs,
    required this.name,
    this.outputs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<AgentFlowDefinitionNodeInput, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'name': name,
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<AgentFlowDefinitionNodeOutput, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentFlowDefinitionNode.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNode(
      configuration: map['configuration'] == null ? null : AgentFlowDefinitionNodeConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<AgentFlowDefinitionNodeInput>(map['inputs'], (value) => AgentFlowDefinitionNodeInput.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<AgentFlowDefinitionNodeOutput>(map['outputs'], (value) => AgentFlowDefinitionNodeOutput.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

