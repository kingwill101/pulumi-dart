// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_include_objects_schema_table.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema {
  /// Schema name.
  final String schema;

  /// Tables in the schema.
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>?
  tables;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?tables == null
          ? null
          : pulumi.Input.encodeList<
              StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable,
              Map<String, dynamic>
            >(tables!, (value) => value.toMap()),
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema(
      schema: map['schema'] as String,
      tables: map['tables'] == null
          ? null
          : pulumi.Input.decodeList<
              StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable
            >(
              map['tables'],
              (value) =>
                  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
