// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_schema_response.dart';

/// PostgreSQL database structure.
class PostgresqlRdbmsResponse {
  /// PostgreSQL schemas in the database server.
  final List<PostgresqlSchemaResponse> postgresqlSchemas;

  /// Creates a new [PostgresqlRdbmsResponse].
  /// [postgresqlSchemas] PostgreSQL schemas in the database server.
  PostgresqlRdbmsResponse({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas': pulumi.Input.encodeList<PostgresqlSchemaResponse, Map<String, dynamic>>(postgresqlSchemas, (value) => value.toMap()),
    };
  }

  factory PostgresqlRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlRdbmsResponse(
      postgresqlSchemas: pulumi.Input.decodeList<PostgresqlSchemaResponse>(map['postgresqlSchemas'], (value) => PostgresqlSchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

