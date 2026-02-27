// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'oracle_table.dart';

/// Oracle schema.
class OracleSchema {
  /// Tables in the schema.
  final List<OracleTable>? oracleTables;

  /// Schema name.
  final String? schema;

  OracleSchema({
    this.oracleTables,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleTablesValue = oracleTables;
    if (oracleTablesValue != null) {
      map['oracleTables'] = Input.encodeList<OracleTable, Map<String, dynamic>>(
          oracleTablesValue, (value) => value.toMap());
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    return map;
  }

  factory OracleSchema.fromMap(Map<String, dynamic> map) {
    return OracleSchema(
      oracleTables: map['oracleTables'] == null
          ? null
          : Input.decodeList<OracleTable>(
              map['oracleTables'],
              (value) =>
                  OracleTable.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
