// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table/stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final List<
          StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable>?
      oracleTables;

  /// Schema name.
  final String schema;

  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleTablesValue = oracleTables;
    if (oracleTablesValue != null) {
      map['oracleTables'] = Input.encodeList<
          StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable,
          Map<String, dynamic>>(oracleTablesValue, (value) => value.toMap());
    }
    map['schema'] = schema;
    return map;
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema(
      oracleTables: map['oracleTables'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable>(
              map['oracleTables'],
              (value) =>
                  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
