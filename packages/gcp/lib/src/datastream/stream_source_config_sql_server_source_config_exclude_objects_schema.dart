// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_exclude_objects_schema_table.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable>?
      tables;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = pulumi.Input.encodeList<
          StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable>(
              map['tables'],
              (value) =>
                  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
