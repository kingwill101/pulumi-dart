// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final List<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable>? oracleTables;
  /// Schema name.
  final String schema;

  /// Creates a new [StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema].
  /// [oracleTables] Tables in the database.
  /// [schema] Schema name.
  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': ?oracleTables == null ? null : pulumi.Input.encodeList<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable, Map<String, dynamic>>(oracleTables!, (value) => value.toMap()),
      'schema': schema,
    };
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema(
      oracleTables: map['oracleTables'] == null ? null : pulumi.Input.decodeList<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable>(map['oracleTables'], (value) => StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}

