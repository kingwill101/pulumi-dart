// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_postgresql_source_config_include_objects_postgresql_schema_postgresql_table/stream_source_config_postgresql_source_config_include_objects_postgresql_schema_postgresql_table.dart';

class StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final List<
          StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable>?
      postgresqlTables;

  /// Database name.
  final String schema;

  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlTablesValue = postgresqlTables;
    if (postgresqlTablesValue != null) {
      map['postgresqlTables'] = Input.encodeList<
          StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable,
          Map<String,
              dynamic>>(postgresqlTablesValue, (value) => value.toMap());
    }
    map['schema'] = schema;
    return map;
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable>(
              map['postgresqlTables'],
              (value) =>
                  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
