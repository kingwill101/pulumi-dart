// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_column.dart';

/// MySQL table.
class MysqlTable {
  /// MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<MysqlColumn>? mysqlColumns;

  /// Table name.
  final String? table;

  MysqlTable({
    this.mysqlColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlColumnsValue = mysqlColumns;
    if (mysqlColumnsValue != null) {
      map['mysqlColumns'] = Input.encodeList<MysqlColumn, Map<String, dynamic>>(
          mysqlColumnsValue, (value) => value.toMap());
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue;
    }
    return map;
  }

  factory MysqlTable.fromMap(Map<String, dynamic> map) {
    return MysqlTable(
      mysqlColumns: map['mysqlColumns'] == null
          ? null
          : Input.decodeList<MysqlColumn>(
              map['mysqlColumns'],
              (value) =>
                  MysqlColumn.fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}
