// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_column_response2.dart';

/// MySQL table.
class MysqlTableResponse2 {
  /// MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  final List<MysqlColumnResponse2> mysqlColumns;

  /// Table name.
  final String tableName;

  MysqlTableResponse2({
    required this.mysqlColumns,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlColumns'] =
        Input.encodeList<MysqlColumnResponse2, Map<String, dynamic>>(
            mysqlColumns, (value) => value.toMap());
    map['tableName'] = tableName;
    return map;
  }

  factory MysqlTableResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlTableResponse2(
      mysqlColumns: Input.decodeList<MysqlColumnResponse2>(
          map['mysqlColumns'],
          (value) => MysqlColumnResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
    );
  }
}
