// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_sql_server_source_config_include_objects_schema_table/stream_source_config_sql_server_source_config_include_objects_schema_table.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>?
      tables;

  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = pulumi.Input.encodeList<
          StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>(
              map['tables'],
              (value) =>
                  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
