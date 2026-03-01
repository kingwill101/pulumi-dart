// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_sql_server_excluded_objects_schema_table_column.dart';

class StreamBackfillAllSqlServerExcludedObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn>?
  columns;

  /// Table name.
  final String table;

  /// Creates a new [StreamBackfillAllSqlServerExcludedObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamBackfillAllSqlServerExcludedObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null
          ? null
          : pulumi.Input.encodeList<
              StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn,
              Map<String, dynamic>
            >(columns!, (value) => value.toMap()),
      'table': table,
    };
  }

  factory StreamBackfillAllSqlServerExcludedObjectsSchemaTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamBackfillAllSqlServerExcludedObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<
              StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn
            >(
              map['columns'],
              (value) =>
                  StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      table: map['table'] as String,
    );
  }
}
