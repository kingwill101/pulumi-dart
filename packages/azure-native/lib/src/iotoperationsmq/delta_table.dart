// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table_schema.dart';

/// Delta table properties
class DeltaTable {
  /// Schema list supported.
  final List<DeltaTableSchema> schema;
  /// Delta table name.
  final String tableName;
  /// Delta table path.
  final String? tablePath;

  /// Creates a new [DeltaTable].
  /// [schema] Schema list supported.
  /// [tableName] Delta table name.
  /// [tablePath] Delta table path.
  DeltaTable({
    required this.schema,
    required this.tableName,
    this.tablePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': pulumi.Input.encodeList<DeltaTableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableName': tableName,
      'tablePath': ?tablePath,
    };
  }

  factory DeltaTable.fromMap(Map<String, dynamic> map) {
    return DeltaTable(
      schema: pulumi.Input.decodeList<DeltaTableSchema>(map['schema'], (value) => DeltaTableSchema.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
      tablePath: map['tablePath'] == null ? null : map['tablePath'] as String,
    );
  }
}

