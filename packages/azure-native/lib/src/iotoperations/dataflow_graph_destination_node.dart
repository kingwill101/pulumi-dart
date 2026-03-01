// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_destination_node_settings.dart';

/// DataflowGraph destination node properties.
class DataflowGraphDestinationNode {
  /// Destination configuration.
  final DataflowGraphDestinationNodeSettings destinationSettings;
  /// Name of the node.
  final String name;
  /// DataflowGraph node types.
  /// Expected value is 'Destination'.
  final String nodeType;

  /// Creates a new [DataflowGraphDestinationNode].
  /// [destinationSettings] Destination configuration.
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  DataflowGraphDestinationNode({
    required this.destinationSettings,
    required this.name,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationSettings': destinationSettings.toMap(),
      'name': name,
      'nodeType': nodeType,
    };
  }

  factory DataflowGraphDestinationNode.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNode(
      destinationSettings: DataflowGraphDestinationNodeSettings.fromMap((map['destinationSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
    );
  }
}

