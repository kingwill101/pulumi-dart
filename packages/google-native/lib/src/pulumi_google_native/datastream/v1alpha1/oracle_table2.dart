// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'oracle_column2.dart';

/// Oracle table.
class OracleTable2 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final List<OracleColumn2>? oracleColumns;

  /// Table name.
  final String? tableName;

  OracleTable2({
    this.oracleColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleColumnsValue = oracleColumns;
    if (oracleColumnsValue != null) {
      map['oracleColumns'] =
          Input.encodeList<OracleColumn2, Map<String, dynamic>>(
              oracleColumnsValue, (value) => value.toMap());
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory OracleTable2.fromMap(Map<String, dynamic> map) {
    return OracleTable2(
      oracleColumns: map['oracleColumns'] == null
          ? null
          : Input.decodeList<OracleColumn2>(
              map['oracleColumns'],
              (value) => OracleColumn2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
