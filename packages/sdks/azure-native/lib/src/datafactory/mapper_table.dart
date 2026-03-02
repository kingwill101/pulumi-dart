// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_dsl_connector_properties.dart';
import 'mapper_table_schema.dart';

/// CDC table details.
class MapperTable {
  /// List of name/value pairs for connection properties.
  final pulumi.Input<List<MapperDslConnectorProperties>>? dslConnectorProperties;
  /// Name of the table.
  final pulumi.Input<String>? name;
  /// List of columns for the source table.
  final pulumi.Input<List<MapperTableSchema>>? schema;

  /// Creates a new [MapperTable].
  /// [dslConnectorProperties] List of name/value pairs for connection properties.
  /// [name] Name of the table.
  /// [schema] List of columns for the source table.
  MapperTable({
    this.dslConnectorProperties,
    this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dslConnectorProperties': ?pulumi.Input.mapOptionalInputValue<List<MapperDslConnectorProperties>, List<Map<String, dynamic>>>(dslConnectorProperties, (value) => pulumi.Input.encodeList<MapperDslConnectorProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<List<MapperTableSchema>, List<Map<String, dynamic>>>(schema, (value) => pulumi.Input.encodeList<MapperTableSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperTable.fromMap(Map<String, dynamic> map) {
    return MapperTable(
      dslConnectorProperties: map['dslConnectorProperties'] == null ? null : (pulumi.Input.decodeList<MapperDslConnectorProperties>(map['dslConnectorProperties'], (value) => MapperDslConnectorProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      schema: map['schema'] == null ? null : (pulumi.Input.decodeList<MapperTableSchema>(map['schema'], (value) => MapperTableSchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

