// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_source_settings_response.dart';

/// DataflowGraph source node properties.
class DataflowGraphSourceNodeResponse {
  /// Name of the node.
  final String name;
  /// DataflowGraph node types.
  /// Expected value is 'Source'.
  final String nodeType;
  /// Source configuration.
  final DataflowGraphSourceSettingsResponse sourceSettings;

  /// Creates a new [DataflowGraphSourceNodeResponse].
  /// [name] Name of the node.
  /// [nodeType] DataflowGraph node types.
  /// [sourceSettings] Source configuration.
  DataflowGraphSourceNodeResponse({
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

  factory DataflowGraphSourceNodeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceNodeResponse(
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      sourceSettings: DataflowGraphSourceSettingsResponse.fromMap((map['sourceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

