// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_connection_input_response.dart';
import 'dataflow_graph_connection_output_response.dart';

/// DataflowGraph DataflowGraphNode Connection.
class DataflowGraphNodeConnectionResponse {
  /// Information about the source node.
  final pulumi.Input<DataflowGraphConnectionInputResponse> from;
  /// Information about the destination node.
  final pulumi.Input<DataflowGraphConnectionOutputResponse> to;

  /// Creates a new [DataflowGraphNodeConnectionResponse].
  /// [from] Information about the source node.
  /// [to] Information about the destination node.
  DataflowGraphNodeConnectionResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': pulumi.Input.mapInputValue<DataflowGraphConnectionInputResponse, Map<String, dynamic>>(from, (value) => value.toMap()),
      'to': pulumi.Input.mapInputValue<DataflowGraphConnectionOutputResponse, Map<String, dynamic>>(to, (value) => value.toMap()),
    };
  }

  factory DataflowGraphNodeConnectionResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphNodeConnectionResponse(
      from: (DataflowGraphConnectionInputResponse.fromMap((map['from'] as Map).cast<String, dynamic>())).input(),
      to: (DataflowGraphConnectionOutputResponse.fromMap((map['to'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

