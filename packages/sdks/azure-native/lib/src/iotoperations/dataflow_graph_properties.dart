// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_node_connection.dart';

/// DataflowGraph properties.
class DataflowGraphProperties {
  /// The mode of the dataflow graph.
  final pulumi.Input<dynamic>? mode;
  /// List of connections between nodes in the dataflow graph.
  final pulumi.Input<List<DataflowGraphNodeConnection>> nodeConnections;
  /// List of nodes in the dataflow graph.
  final pulumi.Input<List<dynamic>> nodes;
  /// Disk persistence mode.
  final pulumi.Input<dynamic>? requestDiskPersistence;

  /// Creates a new [DataflowGraphProperties].
  /// [mode] The mode of the dataflow graph.
  /// [nodeConnections] List of connections between nodes in the dataflow graph.
  /// [nodes] List of nodes in the dataflow graph.
  /// [requestDiskPersistence] Disk persistence mode.
  DataflowGraphProperties({
    pulumi.Input<dynamic>? mode,
    required this.nodeConnections,
    required this.nodes,
    this.requestDiskPersistence,
  }) : mode = mode ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'nodeConnections': pulumi.Input.mapInputValue<List<DataflowGraphNodeConnection>, List<Map<String, dynamic>>>(nodeConnections, (value) => pulumi.Input.encodeList<DataflowGraphNodeConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodes': nodes,
      'requestDiskPersistence': ?requestDiskPersistence,
    };
  }

  factory DataflowGraphProperties.fromMap(Map<String, dynamic> map) {
    return DataflowGraphProperties(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nodeConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowGraphNodeConnection>(map['nodeConnections']!, (value) => DataflowGraphNodeConnection.fromMap((value as Map).cast<String, dynamic>()))),
      nodes: pulumi.Input.fromValue((map['nodes'] as List).cast<dynamic>()),
      requestDiskPersistence: (() { final guardedValue = map['requestDiskPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
