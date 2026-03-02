// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection.dart';
import 'agent_flow_definition_node.dart';

class AgentFlowDefinition {
  /// A list of connection definitions in the flow. See Connection for more information.
  final pulumi.Input<List<AgentFlowDefinitionConnection>>? connections;
  /// A list of node definitions in the flow. See Node for more information.
  final pulumi.Input<List<AgentFlowDefinitionNode>>? nodes;

  /// Creates a new [AgentFlowDefinition].
  /// [connections] A list of connection definitions in the flow. See Connection for more information.
  /// [nodes] A list of node definitions in the flow. See Node for more information.
  AgentFlowDefinition({
    this.connections,
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<AgentFlowDefinitionConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentFlowDefinition.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinition(
      connections: map['connections'] == null ? null : (pulumi.Input.decodeList<AgentFlowDefinitionConnection>(map['connections'], (value) => AgentFlowDefinitionConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<AgentFlowDefinitionNode>(map['nodes'], (value) => AgentFlowDefinitionNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

