// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_node_response.dart';
import 'dataflow_graph_node_connection_response.dart';

/// DataflowGraph properties.
class DataflowGraphPropertiesResponse {
  /// The mode of the dataflow graph.
  final String? mode;
  /// List of connections between nodes in the dataflow graph.
  final List<DataflowGraphNodeConnectionResponse> nodeConnections;
  /// List of nodes in the dataflow graph.
  final List<DataflowGraphDestinationNodeResponse> nodes;
  /// The provisioning state of the dataflow graph.
  final String provisioningState;
  /// Disk persistence mode.
  final String? requestDiskPersistence;

  /// Creates a new [DataflowGraphPropertiesResponse].
  /// [mode] The mode of the dataflow graph.
  /// [nodeConnections] List of connections between nodes in the dataflow graph.
  /// [nodes] List of nodes in the dataflow graph.
  /// [provisioningState] The provisioning state of the dataflow graph.
  /// [requestDiskPersistence] Disk persistence mode.
  DataflowGraphPropertiesResponse({
    this.mode,
    required this.nodeConnections,
    required this.nodes,
    required this.provisioningState,
    this.requestDiskPersistence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'nodeConnections': pulumi.Input.encodeList<DataflowGraphNodeConnectionResponse, Map<String, dynamic>>(nodeConnections, (value) => value.toMap()),
      'nodes': pulumi.Input.encodeList<DataflowGraphDestinationNodeResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'requestDiskPersistence': ?requestDiskPersistence,
    };
  }

  factory DataflowGraphPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphPropertiesResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      nodeConnections: pulumi.Input.decodeList<DataflowGraphNodeConnectionResponse>(map['nodeConnections'], (value) => DataflowGraphNodeConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      nodes: pulumi.Input.decodeList<DataflowGraphDestinationNodeResponse>(map['nodes'], (value) => DataflowGraphDestinationNodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      requestDiskPersistence: map['requestDiskPersistence'] == null ? null : map['requestDiskPersistence'] as String,
    );
  }
}

