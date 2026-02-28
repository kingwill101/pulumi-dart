// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_column_response.dart';

/// PostgreSQL table.
class PostgresqlTableResponse {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<PostgresqlColumnResponse> postgresqlColumns;

  /// Table name.
  final String table;

  /// Creates a new [PostgresqlTableResponse].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  PostgresqlTableResponse({
    required this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postgresqlColumns'] =
        pulumi.Input.encodeList<PostgresqlColumnResponse, Map<String, dynamic>>(
            postgresqlColumns, (value) => value.toMap());
    map['table'] = table;
    return map;
  }

  factory PostgresqlTableResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlTableResponse(
      postgresqlColumns: pulumi.Input.decodeList<PostgresqlColumnResponse>(
          map['postgresqlColumns'],
          (value) => PostgresqlColumnResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
