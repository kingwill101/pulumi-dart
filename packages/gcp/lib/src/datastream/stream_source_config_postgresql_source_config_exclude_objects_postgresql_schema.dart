// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final List<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>?
      postgresqlTables;

  /// Database name.
  final String schema;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Database name.
  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlTablesValue = postgresqlTables;
    if (postgresqlTablesValue != null) {
      map['postgresqlTables'] = pulumi.Input.encodeList<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable,
          Map<String,
              dynamic>>(postgresqlTablesValue, (value) => value.toMap());
    }
    map['schema'] = schema;
    return map;
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>(
              map['postgresqlTables'],
              (value) =>
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
