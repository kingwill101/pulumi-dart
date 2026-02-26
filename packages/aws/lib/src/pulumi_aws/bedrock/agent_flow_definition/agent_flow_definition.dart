// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_flow_definition_connection/agent_flow_definition_connection.dart';
import '../agent_flow_definition_node/agent_flow_definition_node.dart';

class AgentFlowDefinition {
  /// A list of connection definitions in the flow. See Connection for more information.
  final List<AgentFlowDefinitionConnection>? connections;

  /// A list of node definitions in the flow. See Node for more information.
  final List<AgentFlowDefinitionNode>? nodes;

  AgentFlowDefinition({
    this.connections,
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionsValue = connections;
    if (connectionsValue != null) {
      map['connections'] =
          Input.encodeList<AgentFlowDefinitionConnection, Map<String, dynamic>>(
              connectionsValue, (value) => value.toMap());
    }
    final nodesValue = nodes;
    if (nodesValue != null) {
      map['nodes'] =
          Input.encodeList<AgentFlowDefinitionNode, Map<String, dynamic>>(
              nodesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentFlowDefinition.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinition(
      connections: map['connections'] == null
          ? null
          : Input.decodeList<AgentFlowDefinitionConnection>(
              map['connections'],
              (value) => AgentFlowDefinitionConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodes: map['nodes'] == null
          ? null
          : Input.decodeList<AgentFlowDefinitionNode>(
              map['nodes'],
              (value) => AgentFlowDefinitionNode.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
