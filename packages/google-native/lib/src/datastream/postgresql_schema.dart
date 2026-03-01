// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_table.dart';

/// PostgreSQL schema.
class PostgresqlSchema {
  /// Tables in the schema.
  final List<PostgresqlTable>? postgresqlTables;

  /// Schema name.
  final String? schema;

  /// Creates a new [PostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Schema name.
  PostgresqlSchema({this.postgresqlTables, this.schema});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': ?postgresqlTables == null
          ? null
          : pulumi.Input.encodeList<PostgresqlTable, Map<String, dynamic>>(
              postgresqlTables!,
              (value) => value.toMap(),
            ),
      'schema': ?schema,
    };
  }

  factory PostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return PostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null
          ? null
          : pulumi.Input.decodeList<PostgresqlTable>(
              map['postgresqlTables'],
              (value) => PostgresqlTable.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
