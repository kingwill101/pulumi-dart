// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table_schema_response.dart';

/// Delta table properties
class DeltaTableResponse {
  /// Schema list supported.
  final List<DeltaTableSchemaResponse> schema;
  /// Delta table name.
  final String tableName;
  /// Delta table path.
  final String? tablePath;

  /// Creates a new [DeltaTableResponse].
  /// [schema] Schema list supported.
  /// [tableName] Delta table name.
  /// [tablePath] Delta table path.
  DeltaTableResponse({
    required this.schema,
    required this.tableName,
    this.tablePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': pulumi.Input.encodeList<DeltaTableSchemaResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableName': tableName,
      'tablePath': ?tablePath,
    };
  }

  factory DeltaTableResponse.fromMap(Map<String, dynamic> map) {
    return DeltaTableResponse(
      schema: pulumi.Input.decodeList<DeltaTableSchemaResponse>(map['schema'], (value) => DeltaTableSchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
      tablePath: map['tablePath'] == null ? null : map['tablePath'] as String,
    );
  }
}

