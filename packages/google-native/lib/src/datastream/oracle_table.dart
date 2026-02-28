// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column.dart';

/// Oracle table.
class OracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<OracleColumn>? oracleColumns;
  /// Table name.
  final String? table;

  /// Creates a new [OracleTable].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  OracleTable({
    this.oracleColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?oracleColumns == null ? null : pulumi.Input.encodeList<OracleColumn, Map<String, dynamic>>(oracleColumns!, (value) => value.toMap()),
      'table': ?table,
    };
  }

  factory OracleTable.fromMap(Map<String, dynamic> map) {
    return OracleTable(
      oracleColumns: map['oracleColumns'] == null ? null : pulumi.Input.decodeList<OracleColumn>(map['oracleColumns'], (value) => OracleColumn.fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}

