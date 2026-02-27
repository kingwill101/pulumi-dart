// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'postgresql_schema.dart';

/// PostgreSQL database structure.
class PostgresqlRdbms {
  /// PostgreSQL schemas in the database server.
  final List<PostgresqlSchema>? postgresqlSchemas;

  PostgresqlRdbms({
    this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlSchemasValue = postgresqlSchemas;
    if (postgresqlSchemasValue != null) {
      map['postgresqlSchemas'] =
          Input.encodeList<PostgresqlSchema, Map<String, dynamic>>(
              postgresqlSchemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory PostgresqlRdbms.fromMap(Map<String, dynamic> map) {
    return PostgresqlRdbms(
      postgresqlSchemas: map['postgresqlSchemas'] == null
          ? null
          : Input.decodeList<PostgresqlSchema>(
              map['postgresqlSchemas'],
              (value) => PostgresqlSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
