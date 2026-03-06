// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_source_settings.dart';

/// DataflowGraph source node properties.
class DataflowGraphSourceNode {
  /// Name of the node.
  final pulumi.Input<String> name;
  /// DataflowGraph node types.
  /// Expected value is 'Source'.
  final pulumi.Input<String> nodeType;
  /// Source configuration.
  final pulumi.Input<DataflowGraphSourceSettings> sourceSettings;

  /// Creates a new [DataflowGraphSourceNode].
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  /// [sourceSettings] Source configuration.
  const DataflowGraphSourceNode({
    required this.name,
    required this.nodeType,
    required this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nodeType': nodeType,
      'sourceSettings': pulumi.Input.mapInputValue<DataflowGraphSourceSettings, Map<String, dynamic>>(sourceSettings, (value) => value.toMap()),
    };
  }

  factory DataflowGraphSourceNode.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceNode(
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      sourceSettings: pulumi.Input.fromValue(DataflowGraphSourceSettings.fromMap((map['sourceSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

