// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_connection_schema_settings.dart';

/// DataflowGraph DataflowGraphNode Connection Input.
class DataflowGraphConnectionInput {
  /// Name of the input node.
  final pulumi.Input<String> name;
  /// Schema settings for the input node.
  final pulumi.Input<DataflowGraphConnectionSchemaSettings>? schema;

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
      'schema': ?pulumi.Input.mapOptionalInputValue<DataflowGraphConnectionSchemaSettings, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory DataflowGraphConnectionInput.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionInput(
      name: (map['name'] as String).input(),
      schema: map['schema'] == null ? null : (DataflowGraphConnectionSchemaSettings.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

