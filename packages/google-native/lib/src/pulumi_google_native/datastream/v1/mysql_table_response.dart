// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_column_response.dart';

/// MySQL table.
class MysqlTableResponse {
  /// MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<MysqlColumnResponse> mysqlColumns;

  /// Table name.
  final String table;

  MysqlTableResponse({
    required this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlColumns'] =
        Input.encodeList<MysqlColumnResponse, Map<String, dynamic>>(
            mysqlColumns, (value) => value.toMap());
    map['table'] = table;
    return map;
  }

  factory MysqlTableResponse.fromMap(Map<String, dynamic> map) {
    return MysqlTableResponse(
      mysqlColumns: Input.decodeList<MysqlColumnResponse>(
          map['mysqlColumns'],
          (value) => MysqlColumnResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
