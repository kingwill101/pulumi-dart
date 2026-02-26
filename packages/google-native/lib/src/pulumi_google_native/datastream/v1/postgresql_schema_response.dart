// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'postgresql_table_response.dart';

/// PostgreSQL schema.
class PostgresqlSchemaResponse {
  /// Tables in the schema.
  final List<PostgresqlTableResponse> postgresqlTables;

  /// Schema name.
  final String schema;

  PostgresqlSchemaResponse({
    required this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postgresqlTables'] =
        Input.encodeList<PostgresqlTableResponse, Map<String, dynamic>>(
            postgresqlTables, (value) => value.toMap());
    map['schema'] = schema;
    return map;
  }

  factory PostgresqlSchemaResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlSchemaResponse(
      postgresqlTables: Input.decodeList<PostgresqlTableResponse>(
          map['postgresqlTables'],
          (value) => PostgresqlTableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
