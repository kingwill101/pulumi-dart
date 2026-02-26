// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_spanner_source_config_exclude_objects_schema_table_column/stream_source_config_spanner_source_config_exclude_objects_schema_table_column.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn>?
      columns;

  /// Table name.
  final String table;

  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<
          StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn>(
              map['columns'],
              (value) =>
                  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
