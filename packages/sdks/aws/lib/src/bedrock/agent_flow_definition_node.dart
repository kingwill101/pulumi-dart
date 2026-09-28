// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration.dart';
import 'agent_flow_definition_node_input.dart';
import 'agent_flow_definition_node_output.dart';

class AgentFlowDefinitionNode {
  /// Configurations for the node. See `definition.node.configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfiguration?>? configuration;
  /// Configurations for an input flow node in your flow. The node `inputs` can't be specified for this node. This block has no arguments.
  final pulumi.Input<List<AgentFlowDefinitionNodeInput>?>? inputs;
  /// Name for the flow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Configurations for an output flow node in your flow. The node `outputs` can't be specified for this node. This block has no arguments.
  final pulumi.Input<List<AgentFlowDefinitionNodeOutput>?>? outputs;
  /// Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNode].
  /// [configuration] Configurations for the node. See `definition.node.configuration` Block for details.
  /// [inputs] Configurations for an input flow node in your flow. The node `inputs` can't be specified for this node. This block has no arguments.
  /// [name] Name for the flow.
  /// [outputs] Configurations for an output flow node in your flow. The node `outputs` can't be specified for this node. This block has no arguments.
  /// [type] Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
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
