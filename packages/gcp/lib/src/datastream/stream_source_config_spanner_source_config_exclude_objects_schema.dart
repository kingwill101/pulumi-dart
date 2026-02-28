// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_exclude_objects_schema_table.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable>?
      tables;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = pulumi.Input.encodeList<
          StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable>(
              map['tables'],
              (value) =>
                  StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
