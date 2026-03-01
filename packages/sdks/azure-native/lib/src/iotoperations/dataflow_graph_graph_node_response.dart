// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_node_graph_settings_response.dart';

/// DataflowGraph graph node properties.
class DataflowGraphGraphNodeResponse {
  /// Graph configuration.
  final DataflowGraphNodeGraphSettingsResponse graphSettings;
  /// Name of the node.
  final String name;
  /// DataflowGraph node types.
  /// Expected value is 'Graph'.
  final String nodeType;

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
      'graphSettings': graphSettings.toMap(),
      'name': name,
      'nodeType': nodeType,
    };
  }

  factory DataflowGraphGraphNodeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphGraphNodeResponse(
      graphSettings: DataflowGraphNodeGraphSettingsResponse.fromMap((map['graphSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
    );
  }
}

