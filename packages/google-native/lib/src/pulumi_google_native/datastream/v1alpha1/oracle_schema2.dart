// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'oracle_table2.dart';

/// Oracle schema.
class OracleSchema2 {
  /// Tables in the schema.
  final List<OracleTable2>? oracleTables;

  /// Schema name.
  final String? schemaName;

  OracleSchema2({
    this.oracleTables,
    this.schemaName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleTablesValue = oracleTables;
    if (oracleTablesValue != null) {
      map['oracleTables'] =
          Input.encodeList<OracleTable2, Map<String, dynamic>>(
              oracleTablesValue, (value) => value.toMap());
    }
    final schemaNameValue = schemaName;
    if (schemaNameValue != null) {
      map['schemaName'] = schemaNameValue;
    }
    return map;
  }

  factory OracleSchema2.fromMap(Map<String, dynamic> map) {
    return OracleSchema2(
      oracleTables: map['oracleTables'] == null
          ? null
          : Input.decodeList<OracleTable2>(
              map['oracleTables'],
              (value) =>
                  OracleTable2.fromMap((value as Map).cast<String, dynamic>())),
      schemaName:
          map['schemaName'] == null ? null : map['schemaName'] as String,
    );
  }
}
