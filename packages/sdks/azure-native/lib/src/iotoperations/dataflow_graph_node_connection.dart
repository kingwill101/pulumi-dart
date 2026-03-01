// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_connection_input.dart';
import 'dataflow_graph_connection_output.dart';

/// DataflowGraph DataflowGraphNode Connection.
class DataflowGraphNodeConnection {
  /// Information about the source node.
  final DataflowGraphConnectionInput from;
  /// Information about the destination node.
  final DataflowGraphConnectionOutput to;

  /// Creates a new [DataflowGraphNodeConnection].
  /// [from] Information about the source node.
  /// [to] Information about the destination node.
  DataflowGraphNodeConnection({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from.toMap(),
      'to': to.toMap(),
    };
  }

  factory DataflowGraphNodeConnection.fromMap(Map<String, dynamic> map) {
    return DataflowGraphNodeConnection(
      from: DataflowGraphConnectionInput.fromMap((map['from'] as Map).cast<String, dynamic>()),
      to: DataflowGraphConnectionOutput.fromMap((map['to'] as Map).cast<String, dynamic>()),
    );
  }
}

