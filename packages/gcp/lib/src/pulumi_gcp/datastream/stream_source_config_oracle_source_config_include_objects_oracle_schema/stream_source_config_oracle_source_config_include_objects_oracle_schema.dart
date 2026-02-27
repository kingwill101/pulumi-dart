// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_oracle_source_config_include_objects_oracle_schema_oracle_table/stream_source_config_oracle_source_config_include_objects_oracle_schema_oracle_table.dart';

class StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final List<
          StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable>?
      oracleTables;

  /// Schema name.
  final String schema;

  StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleTablesValue = oracleTables;
    if (oracleTablesValue != null) {
      map['oracleTables'] = pulumi.Input.encodeList<
          StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable,
          Map<String, dynamic>>(oracleTablesValue, (value) => value.toMap());
    }
    map['schema'] = schema;
    return map;
  }

  factory StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema(
      oracleTables: map['oracleTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable>(
              map['oracleTables'],
              (value) =>
                  StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
