// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection.dart';
import 'agent_flow_definition_node.dart';

class AgentFlowDefinition {
  /// List of connection definitions in the flow. See `definition.connection` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionConnection>?>? connections;
  /// List of node definitions in the flow. See `definition.node` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNode>?>? nodes;

  /// Creates a new [AgentFlowDefinition].
  /// [connections] List of connection definitions in the flow. See `definition.connection` Block for details.
  /// [nodes] List of node definitions in the flow. See `definition.node` Block for details.
  const AgentFlowDefinition({
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
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionConnection>(guardedValue, (value) => AgentFlowDefinitionConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNode>(guardedValue, (value) => AgentFlowDefinitionNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
