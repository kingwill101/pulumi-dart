// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table/stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final List<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>?
      postgresqlTables;

  /// Database name.
  final String schema;

  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlTablesValue = postgresqlTables;
    if (postgresqlTablesValue != null) {
      map['postgresqlTables'] = Input.encodeList<
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
          : Input.decodeList<
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>(
              map['postgresqlTables'],
              (value) =>
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
