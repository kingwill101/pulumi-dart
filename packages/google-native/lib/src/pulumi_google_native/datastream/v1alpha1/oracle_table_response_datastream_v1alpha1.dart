// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column_response_datastream_v1alpha1.dart';

/// Oracle table.
class OracleTableResponseDatastreamV1alpha1 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final List<OracleColumnResponseDatastreamV1alpha1> oracleColumns;

  /// Table name.
  final String tableName;

  OracleTableResponseDatastreamV1alpha1({
    required this.oracleColumns,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleColumns'] = pulumi.Input.encodeList<
        OracleColumnResponseDatastreamV1alpha1,
        Map<String, dynamic>>(oracleColumns, (value) => value.toMap());
    map['tableName'] = tableName;
    return map;
  }

  factory OracleTableResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return OracleTableResponseDatastreamV1alpha1(
      oracleColumns:
          pulumi.Input.decodeList<OracleColumnResponseDatastreamV1alpha1>(
              map['oracleColumns'],
              (value) => OracleColumnResponseDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
    );
  }
}
