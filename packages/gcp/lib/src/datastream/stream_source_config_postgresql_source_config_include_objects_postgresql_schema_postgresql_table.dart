// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_include_objects_postgresql_schema_postgresql_table_postgresql_column.dart';

class StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
    StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn
  >?
  postgresqlColumns;

  /// Table name.
  final String table;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable({
    this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns': ?postgresqlColumns == null
          ? null
          : pulumi.Input.encodeList<
              StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn,
              Map<String, dynamic>
            >(postgresqlColumns!, (value) => value.toMap()),
      'table': table,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable(
      postgresqlColumns: map['postgresqlColumns'] == null
          ? null
          : pulumi.Input.decodeList<
              StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn
            >(
              map['postgresqlColumns'],
              (value) =>
                  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      table: map['table'] as String,
    );
  }
}
