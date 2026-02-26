// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_sql_server_excluded_objects_schema_table/stream_backfill_all_sql_server_excluded_objects_schema_table.dart';

class StreamBackfillAllSqlServerExcludedObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamBackfillAllSqlServerExcludedObjectsSchemaTable>? tables;

  StreamBackfillAllSqlServerExcludedObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = Input.encodeList<
          StreamBackfillAllSqlServerExcludedObjectsSchemaTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamBackfillAllSqlServerExcludedObjectsSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSqlServerExcludedObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : Input.decodeList<
                  StreamBackfillAllSqlServerExcludedObjectsSchemaTable>(
              map['tables'],
              (value) =>
                  StreamBackfillAllSqlServerExcludedObjectsSchemaTable.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
