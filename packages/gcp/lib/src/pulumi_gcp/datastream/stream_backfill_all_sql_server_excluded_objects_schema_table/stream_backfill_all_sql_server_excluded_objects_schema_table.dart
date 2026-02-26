// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_sql_server_excluded_objects_schema_table_column/stream_backfill_all_sql_server_excluded_objects_schema_table_column.dart';

class StreamBackfillAllSqlServerExcludedObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn>?
      columns;

  /// Table name.
  final String table;

  StreamBackfillAllSqlServerExcludedObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<
          StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamBackfillAllSqlServerExcludedObjectsSchemaTable.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSqlServerExcludedObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<
                  StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn>(
              map['columns'],
              (value) =>
                  StreamBackfillAllSqlServerExcludedObjectsSchemaTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
