// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table_schema_response.dart';

/// Delta table properties
class DeltaTableResponse {
  /// Schema list supported.
  final pulumi.Input<List<DeltaTableSchemaResponse>> schema;
  /// Delta table name.
  final pulumi.Input<String> tableName;
  /// Delta table path.
  final pulumi.Input<String?>? tablePath;

  /// Creates a new [DeltaTableResponse].
  /// [schema] Schema list supported.
  /// [tableName] Delta table name.
  /// [tablePath] Delta table path.
  const DeltaTableResponse({
    required this.schema,
    required this.tableName,
    this.tablePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': pulumi.Input.mapInputValue<List<DeltaTableSchemaResponse>, List<Map<String, dynamic>>>(schema, (value) => pulumi.Input.encodeList<DeltaTableSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': tableName,
      'tablePath': ?tablePath,
    };
  }

  factory DeltaTableResponse.fromMap(Map<String, dynamic> map) {
    return DeltaTableResponse(
      schema: pulumi.Input.fromValue(pulumi.Input.decodeList<DeltaTableSchemaResponse>(map['schema']!, (value) => DeltaTableSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      tablePath: (() { final guardedValue = map['tablePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
