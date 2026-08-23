// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_node_response.dart';
import 'dataflow_graph_node_connection_response.dart';

/// DataflowGraph properties.
class DataflowGraphPropertiesResponse {
  /// The mode of the dataflow graph.
  final pulumi.Input<String>? mode;
  /// List of connections between nodes in the dataflow graph.
  final pulumi.Input<List<DataflowGraphNodeConnectionResponse>> nodeConnections;
  /// List of nodes in the dataflow graph.
  final pulumi.Input<List<DataflowGraphDestinationNodeResponse>> nodes;
  /// The provisioning state of the dataflow graph.
  final pulumi.Input<String> provisioningState;
  /// Disk persistence mode.
  final pulumi.Input<String>? requestDiskPersistence;

  /// Creates a new [DataflowGraphPropertiesResponse].
  /// [mode] The mode of the dataflow graph.
  /// [nodeConnections] List of connections between nodes in the dataflow graph.
  /// [nodes] List of nodes in the dataflow graph.
  /// [provisioningState] The provisioning state of the dataflow graph.
  /// [requestDiskPersistence] Disk persistence mode.
  const DataflowGraphPropertiesResponse({
    this.mode,
    required this.nodeConnections,
    required this.nodes,
    required this.provisioningState,
    this.requestDiskPersistence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'nodeConnections': pulumi.Input.mapInputValue<List<DataflowGraphNodeConnectionResponse>, List<Map<String, dynamic>>>(nodeConnections, (value) => pulumi.Input.encodeList<DataflowGraphNodeConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodes': pulumi.Input.mapInputValue<List<DataflowGraphDestinationNodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<DataflowGraphDestinationNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'requestDiskPersistence': ?requestDiskPersistence,
    };
  }

  factory DataflowGraphPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphPropertiesResponse(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowGraphNodeConnectionResponse>(map['nodeConnections']!, (value) => DataflowGraphNodeConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      nodes: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowGraphDestinationNodeResponse>(map['nodes']!, (value) => DataflowGraphDestinationNodeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      requestDiskPersistence: (() { final guardedValue = map['requestDiskPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
