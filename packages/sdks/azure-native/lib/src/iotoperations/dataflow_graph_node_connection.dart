// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_connection_input.dart';
import 'dataflow_graph_connection_output.dart';

/// DataflowGraph DataflowGraphNode Connection.
class DataflowGraphNodeConnection {
  /// Information about the source node.
  final pulumi.Input<DataflowGraphConnectionInput> from;

  /// Information about the destination node.
  final pulumi.Input<DataflowGraphConnectionOutput> to;

  /// Creates a new [DataflowGraphNodeConnection].
  /// [from] Information about the source node.
  /// [to] Information about the destination node.
  DataflowGraphNodeConnection({required this.from, required this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from':
          pulumi.Input.mapInputValue<
            DataflowGraphConnectionInput,
            Map<String, dynamic>
          >(from, (value) => value.toMap()),
      'to':
          pulumi.Input.mapInputValue<
            DataflowGraphConnectionOutput,
            Map<String, dynamic>
          >(to, (value) => value.toMap()),
    };
  }

  factory DataflowGraphNodeConnection.fromMap(Map<String, dynamic> map) {
    return DataflowGraphNodeConnection(
      from: pulumi.Input.fromValue(
        DataflowGraphConnectionInput.fromMap(
          (map['from']! as Map).cast<String, dynamic>(),
        ),
      ),
      to: pulumi.Input.fromValue(
        DataflowGraphConnectionOutput.fromMap(
          (map['to']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
