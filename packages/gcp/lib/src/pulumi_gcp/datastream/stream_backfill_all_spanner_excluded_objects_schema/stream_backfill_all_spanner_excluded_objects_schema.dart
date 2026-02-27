// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_spanner_excluded_objects_schema_table/stream_backfill_all_spanner_excluded_objects_schema_table.dart';

class StreamBackfillAllSpannerExcludedObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamBackfillAllSpannerExcludedObjectsSchemaTable>? tables;

  StreamBackfillAllSpannerExcludedObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = pulumi.Input.encodeList<
          StreamBackfillAllSpannerExcludedObjectsSchemaTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamBackfillAllSpannerExcludedObjectsSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllSpannerExcludedObjectsSchemaTable>(
              map['tables'],
              (value) =>
                  StreamBackfillAllSpannerExcludedObjectsSchemaTable.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
