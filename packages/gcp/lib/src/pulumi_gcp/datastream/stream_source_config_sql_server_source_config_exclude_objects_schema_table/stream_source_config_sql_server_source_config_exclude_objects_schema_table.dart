// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_sql_server_source_config_exclude_objects_schema_table_column/stream_source_config_sql_server_source_config_exclude_objects_schema_table_column.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn>?
      columns;

  /// Table name.
  final String table;

  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<
          StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn>(
              map['columns'],
              (value) =>
                  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
