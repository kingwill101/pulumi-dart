// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_spanner_source_config_include_objects_schema_table_column/stream_source_config_spanner_source_config_include_objects_schema_table_column.dart';

class StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn>?
      columns;

  /// Table name.
  final String table;

  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<
          StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn>(
              map['columns'],
              (value) =>
                  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
