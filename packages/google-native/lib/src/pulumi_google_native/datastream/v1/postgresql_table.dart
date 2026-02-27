// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_column.dart';

/// PostgreSQL table.
class PostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<PostgresqlColumn>? postgresqlColumns;

  /// Table name.
  final String? table;

  PostgresqlTable({
    this.postgresqlColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlColumnsValue = postgresqlColumns;
    if (postgresqlColumnsValue != null) {
      map['postgresqlColumns'] =
          pulumi.Input.encodeList<PostgresqlColumn, Map<String, dynamic>>(
              postgresqlColumnsValue, (value) => value.toMap());
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue;
    }
    return map;
  }

  factory PostgresqlTable.fromMap(Map<String, dynamic> map) {
    return PostgresqlTable(
      postgresqlColumns: map['postgresqlColumns'] == null
          ? null
          : pulumi.Input.decodeList<PostgresqlColumn>(
              map['postgresqlColumns'],
              (value) => PostgresqlColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}
