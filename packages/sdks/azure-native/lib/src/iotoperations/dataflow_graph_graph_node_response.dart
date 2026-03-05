// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_node_graph_settings_response.dart';

/// DataflowGraph graph node properties.
class DataflowGraphGraphNodeResponse {
  /// Graph configuration.
  final pulumi.Input<DataflowGraphNodeGraphSettingsResponse> graphSettings;
  /// Name of the node.
  final pulumi.Input<String> name;
  /// DataflowGraph node types.
  /// Expected value is 'Graph'.
  final pulumi.Input<String> nodeType;

  /// Creates a new [DataflowGraphGraphNodeResponse].
  /// [graphSettings] Graph configuration.
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  DataflowGraphGraphNodeResponse({
    required this.graphSettings,
    required this.name,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphSettings': pulumi.Input.mapInputValue<DataflowGraphNodeGraphSettingsResponse, Map<String, dynamic>>(graphSettings, (value) => value.toMap()),
      'name': name,
      'nodeType': nodeType,
    };
  }

  factory DataflowGraphGraphNodeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphGraphNodeResponse(
      graphSettings: pulumi.Input.fromValue(DataflowGraphNodeGraphSettingsResponse.fromMap((map['graphSettings']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
    );
  }
}

