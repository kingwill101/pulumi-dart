// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_node_graph_settings.dart';

/// DataflowGraph graph node properties.
class DataflowGraphGraphNode {
  /// Graph configuration.
  final DataflowGraphNodeGraphSettings graphSettings;
  /// Name of the node.
  final String name;
  /// DataflowGraph node types.
  /// Expected value is 'Graph'.
  final String nodeType;

  /// Creates a new [DataflowGraphGraphNode].
  /// [graphSettings] Graph configuration.
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  DataflowGraphGraphNode({
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

  factory DataflowGraphGraphNode.fromMap(Map<String, dynamic> map) {
    return DataflowGraphGraphNode(
      graphSettings: DataflowGraphNodeGraphSettings.fromMap((map['graphSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
    );
  }
}

