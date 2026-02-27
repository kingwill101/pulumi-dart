// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column_datastream_v1alpha1.dart';

/// Oracle table.
class OracleTableDatastreamV1alpha1 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final List<OracleColumnDatastreamV1alpha1>? oracleColumns;

  /// Table name.
  final String? tableName;

  OracleTableDatastreamV1alpha1({
    this.oracleColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleColumnsValue = oracleColumns;
    if (oracleColumnsValue != null) {
      map['oracleColumns'] = pulumi.Input.encodeList<
          OracleColumnDatastreamV1alpha1,
          Map<String, dynamic>>(oracleColumnsValue, (value) => value.toMap());
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory OracleTableDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleTableDatastreamV1alpha1(
      oracleColumns: map['oracleColumns'] == null
          ? null
          : pulumi.Input.decodeList<OracleColumnDatastreamV1alpha1>(
              map['oracleColumns'],
              (value) => OracleColumnDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
