// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_source_settings_response.dart';

/// DataflowGraph source node properties.
class DataflowGraphSourceNodeResponse {
  /// Name of the node.
  final pulumi.Input<String> name;
  /// DataflowGraph node types.
  /// Expected value is 'Source'.
  final pulumi.Input<String> nodeType;
  /// Source configuration.
  final pulumi.Input<DataflowGraphSourceSettingsResponse> sourceSettings;

  /// Creates a new [DataflowGraphSourceNodeResponse].
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  /// [sourceSettings] Source configuration.
  const DataflowGraphSourceNodeResponse({
    required this.name,
    required this.nodeType,
    required this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nodeType': nodeType,
      'sourceSettings': pulumi.Input.mapInputValue<DataflowGraphSourceSettingsResponse, Map<String, dynamic>>(sourceSettings, (value) => value.toMap()),
    };
  }

  factory DataflowGraphSourceNodeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceNodeResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      sourceSettings: pulumi.Input.fromValue(DataflowGraphSourceSettingsResponse.fromMap((map['sourceSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

