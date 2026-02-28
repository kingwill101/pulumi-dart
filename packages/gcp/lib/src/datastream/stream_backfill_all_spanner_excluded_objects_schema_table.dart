// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_spanner_excluded_objects_schema_table_column.dart';

class StreamBackfillAllSpannerExcludedObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn>? columns;

  /// Table name.
  final String table;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamBackfillAllSpannerExcludedObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = pulumi.Input.encodeList<
          StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamBackfillAllSpannerExcludedObjectsSchemaTable.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn>(
              map['columns'],
              (value) =>
                  StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
