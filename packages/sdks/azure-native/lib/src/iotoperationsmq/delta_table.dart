// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table_schema.dart';

/// Delta table properties
class DeltaTable {
  /// Schema list supported.
  final pulumi.Input<List<DeltaTableSchema>> schema;
  /// Delta table name.
  final pulumi.Input<String> tableName;
  /// Delta table path.
  final pulumi.Input<String>? tablePath;

  /// Creates a new [DeltaTable].
  /// [schema] Schema list supported.
  /// [tableName] Delta table name.
  /// [tablePath] Delta table path.
  const DeltaTable({
    required this.schema,
    required this.tableName,
    this.tablePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': pulumi.Input.mapInputValue<List<DeltaTableSchema>, List<Map<String, dynamic>>>(schema, (value) => pulumi.Input.encodeList<DeltaTableSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': tableName,
      'tablePath': ?tablePath,
    };
  }

  factory DeltaTable.fromMap(Map<String, dynamic> map) {
    return DeltaTable(
      schema: pulumi.Input.fromValue(pulumi.Input.decodeList<DeltaTableSchema>(map['schema']!, (value) => DeltaTableSchema.fromMap((value as Map).cast<String, dynamic>()))),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      tablePath: (() { final guardedValue = map['tablePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

