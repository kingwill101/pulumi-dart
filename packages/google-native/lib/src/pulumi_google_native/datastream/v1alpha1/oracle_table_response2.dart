// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'oracle_column_response2.dart';

/// Oracle table.
class OracleTableResponse2 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final List<OracleColumnResponse2> oracleColumns;

  /// Table name.
  final String tableName;

  OracleTableResponse2({
    required this.oracleColumns,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleColumns'] =
        Input.encodeList<OracleColumnResponse2, Map<String, dynamic>>(
            oracleColumns, (value) => value.toMap());
    map['tableName'] = tableName;
    return map;
  }

  factory OracleTableResponse2.fromMap(Map<String, dynamic> map) {
    return OracleTableResponse2(
      oracleColumns: Input.decodeList<OracleColumnResponse2>(
          map['oracleColumns'],
          (value) => OracleColumnResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
    );
  }
}
