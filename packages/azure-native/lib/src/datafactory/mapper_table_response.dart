// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_dsl_connector_properties_response.dart';
import 'mapper_table_schema_response.dart';

/// CDC table details.
class MapperTableResponse {
  /// List of name/value pairs for connection properties.
  final List<MapperDslConnectorPropertiesResponse>? dslConnectorProperties;
  /// Name of the table.
  final String? name;
  /// List of columns for the source table.
  final List<MapperTableSchemaResponse>? schema;

  /// Creates a new [MapperTableResponse].
  /// [dslConnectorProperties] List of name/value pairs for connection properties.
  /// [name] Name of the table.
  /// [schema] List of columns for the source table.
  MapperTableResponse({
    this.dslConnectorProperties,
    this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dslConnectorProperties': ?dslConnectorProperties == null ? null : pulumi.Input.encodeList<MapperDslConnectorPropertiesResponse, Map<String, dynamic>>(dslConnectorProperties!, (value) => value.toMap()),
      'name': ?name,
      'schema': ?schema == null ? null : pulumi.Input.encodeList<MapperTableSchemaResponse, Map<String, dynamic>>(schema!, (value) => value.toMap()),
    };
  }

  factory MapperTableResponse.fromMap(Map<String, dynamic> map) {
    return MapperTableResponse(
      dslConnectorProperties: map['dslConnectorProperties'] == null ? null : pulumi.Input.decodeList<MapperDslConnectorPropertiesResponse>(map['dslConnectorProperties'], (value) => MapperDslConnectorPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      schema: map['schema'] == null ? null : pulumi.Input.decodeList<MapperTableSchemaResponse>(map['schema'], (value) => MapperTableSchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

