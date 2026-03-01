// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_graph_connection_schema_settings.dart';

/// DataflowGraph DataflowGraphNode Connection Input.
class DataflowGraphConnectionInput {
  /// Name of the input node.
  final String name;
  /// Schema settings for the input node.
  final DataflowGraphConnectionSchemaSettings? schema;

  /// Creates a new [DataflowGraphConnectionInput].
  /// [name] Name of the input node.
  /// [schema] Schema settings for the input node.
  DataflowGraphConnectionInput({
    required this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'schema': ?schema == null ? null : schema!.toMap(),
    };
  }

  factory DataflowGraphConnectionInput.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionInput(
      name: map['name'] as String,
      schema: map['schema'] == null ? null : DataflowGraphConnectionSchemaSettings.fromMap((map['schema'] as Map).cast<String, dynamic>()),
    );
  }
}

