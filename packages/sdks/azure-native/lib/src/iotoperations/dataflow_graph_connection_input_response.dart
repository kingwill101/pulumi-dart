// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_graph_connection_schema_settings_response.dart';

/// DataflowGraph DataflowGraphNode Connection Input.
class DataflowGraphConnectionInputResponse {
  /// Name of the input node.
  final pulumi.Input<String> name;
  /// Schema settings for the input node.
  final pulumi.Input<DataflowGraphConnectionSchemaSettingsResponse>? schema;

  /// Creates a new [DataflowGraphConnectionInputResponse].
  /// [name] Name of the input node.
  /// [schema] Schema settings for the input node.
  DataflowGraphConnectionInputResponse({
    required this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'schema': ?pulumi.Input.mapOptionalInputValue<DataflowGraphConnectionSchemaSettingsResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory DataflowGraphConnectionInputResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionInputResponse(
      name: (map['name'] as String).input(),
      schema: map['schema'] == null ? null : (DataflowGraphConnectionSchemaSettingsResponse.fromMap((map['schema'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

