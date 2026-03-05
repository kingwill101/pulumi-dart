// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_node.dart';
import 'dataflow_graph_node_connection.dart';

/// DataflowGraph properties.
class DataflowGraphProperties {
  /// The mode of the dataflow graph.
  final pulumi.Input<String>? mode;
  /// List of connections between nodes in the dataflow graph.
  final pulumi.Input<List<DataflowGraphNodeConnection>> nodeConnections;
  /// List of nodes in the dataflow graph.
  final pulumi.Input<List<DataflowGraphDestinationNode>> nodes;
  /// Disk persistence mode.
  final pulumi.Input<String>? requestDiskPersistence;

  /// Creates a new [DataflowGraphProperties].
  /// [mode] The mode of the dataflow graph.
  /// [nodeConnections] List of connections between nodes in the dataflow graph.
  /// [nodes] List of nodes in the dataflow graph.
  /// [requestDiskPersistence] Disk persistence mode.
  DataflowGraphProperties({
    this.mode,
    required this.nodeConnections,
    required this.nodes,
    this.requestDiskPersistence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'nodeConnections': pulumi.Input.mapInputValue<List<DataflowGraphNodeConnection>, List<Map<String, dynamic>>>(nodeConnections, (value) => pulumi.Input.encodeList<DataflowGraphNodeConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodes': pulumi.Input.mapInputValue<List<DataflowGraphDestinationNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<DataflowGraphDestinationNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestDiskPersistence': ?requestDiskPersistence,
    };
  }

  factory DataflowGraphProperties.fromMap(Map<String, dynamic> map) {
    return DataflowGraphProperties(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowGraphNodeConnection>(map['nodeConnections']!, (value) => DataflowGraphNodeConnection.fromMap((value as Map).cast<String, dynamic>()))),
      nodes: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowGraphDestinationNode>(map['nodes']!, (value) => DataflowGraphDestinationNode.fromMap((value as Map).cast<String, dynamic>()))),
      requestDiskPersistence: (() { final guardedValue = map['requestDiskPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

