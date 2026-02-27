// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_column2.dart';

/// MySQL table.
class MysqlTable2 {
  /// MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  final List<MysqlColumn2>? mysqlColumns;

  /// Table name.
  final String? tableName;

  MysqlTable2({
    this.mysqlColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlColumnsValue = mysqlColumns;
    if (mysqlColumnsValue != null) {
      map['mysqlColumns'] =
          Input.encodeList<MysqlColumn2, Map<String, dynamic>>(
              mysqlColumnsValue, (value) => value.toMap());
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory MysqlTable2.fromMap(Map<String, dynamic> map) {
    return MysqlTable2(
      mysqlColumns: map['mysqlColumns'] == null
          ? null
          : Input.decodeList<MysqlColumn2>(
              map['mysqlColumns'],
              (value) =>
                  MysqlColumn2.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
