// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_source_settings.dart';

/// DataflowGraph source node properties.
class DataflowGraphSourceNode {
  /// Name of the node.
  final String name;
  /// DataflowGraph node types.
  /// Expected value is 'Source'.
  final String nodeType;
  /// Source configuration.
  final DataflowGraphSourceSettings sourceSettings;

  /// Creates a new [DataflowGraphSourceNode].
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  /// [sourceSettings] Source configuration.
  DataflowGraphSourceNode({
    required this.name,
    required this.nodeType,
    required this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nodeType': nodeType,
      'sourceSettings': sourceSettings.toMap(),
    };
  }

  factory DataflowGraphSourceNode.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceNode(
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      sourceSettings: DataflowGraphSourceSettings.fromMap((map['sourceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

