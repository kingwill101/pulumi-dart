// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table_postgresql_column/stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table_postgresql_column.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>?
      postgresqlColumns;

  /// Table name.
  final String table;

  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable({
    this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlColumnsValue = postgresqlColumns;
    if (postgresqlColumnsValue != null) {
      map['postgresqlColumns'] = pulumi.Input.encodeList<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn,
          Map<String,
              dynamic>>(postgresqlColumnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable(
      postgresqlColumns: map['postgresqlColumns'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>(
              map['postgresqlColumns'],
              (value) =>
                  StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
