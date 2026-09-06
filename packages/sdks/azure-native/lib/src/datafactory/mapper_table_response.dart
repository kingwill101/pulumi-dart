// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_dsl_connector_properties_response.dart';
import 'mapper_table_schema_response.dart';

/// CDC table details.
class MapperTableResponse {
  /// List of name/value pairs for connection properties.
  final pulumi.Input<List<MapperDslConnectorPropertiesResponse>?>? dslConnectorProperties;
  /// Name of the table.
  final pulumi.Input<String?>? name;
  /// List of columns for the source table.
  final pulumi.Input<List<MapperTableSchemaResponse>?>? schema;

  /// Creates a new [MapperTableResponse].
  /// [dslConnectorProperties] List of name/value pairs for connection properties.
  /// [name] Name of the table.
  /// [schema] List of columns for the source table.
  const MapperTableResponse({
    this.dslConnectorProperties,
    this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dslConnectorProperties': ?pulumi.Input.mapOptionalInputValue<List<MapperDslConnectorPropertiesResponse>, List<Map<String, dynamic>>>(dslConnectorProperties, (value) => pulumi.Input.encodeList<MapperDslConnectorPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<List<MapperTableSchemaResponse>, List<Map<String, dynamic>>>(schema, (value) => pulumi.Input.encodeList<MapperTableSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperTableResponse.fromMap(Map<String, dynamic> map) {
    return MapperTableResponse(
      dslConnectorProperties: (() { final guardedValue = map['dslConnectorProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperDslConnectorPropertiesResponse>(guardedValue, (value) => MapperDslConnectorPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperTableSchemaResponse>(guardedValue, (value) => MapperTableSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
