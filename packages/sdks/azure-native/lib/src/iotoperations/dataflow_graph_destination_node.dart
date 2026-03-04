// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_destination_node_settings.dart';

/// DataflowGraph destination node properties.
class DataflowGraphDestinationNode {
  /// Destination configuration.
  final pulumi.Input<DataflowGraphDestinationNodeSettings> destinationSettings;

  /// Name of the node.
  final pulumi.Input<String> name;

  /// DataflowGraph node types.
  /// Expected value is 'Destination'.
  final pulumi.Input<String> nodeType;

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
      'destinationSettings':
          pulumi.Input.mapInputValue<
            DataflowGraphDestinationNodeSettings,
            Map<String, dynamic>
          >(destinationSettings, (value) => value.toMap()),
      'name': name,
      'nodeType': nodeType,
    };
  }

  factory DataflowGraphDestinationNode.fromMap(Map<String, dynamic> map) {
    return DataflowGraphDestinationNode(
      destinationSettings: pulumi.Input.fromValue(
        DataflowGraphDestinationNodeSettings.fromMap(
          (map['destinationSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
    );
  }
}
