// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'postgresql_table.dart';

/// PostgreSQL schema.
class PostgresqlSchema {
  /// Tables in the schema.
  final List<PostgresqlTable>? postgresqlTables;

  /// Schema name.
  final String? schema;

  PostgresqlSchema({
    this.postgresqlTables,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlTablesValue = postgresqlTables;
    if (postgresqlTablesValue != null) {
      map['postgresqlTables'] =
          Input.encodeList<PostgresqlTable, Map<String, dynamic>>(
              postgresqlTablesValue, (value) => value.toMap());
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    return map;
  }

  factory PostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return PostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null
          ? null
          : Input.decodeList<PostgresqlTable>(
              map['postgresqlTables'],
              (value) => PostgresqlTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
