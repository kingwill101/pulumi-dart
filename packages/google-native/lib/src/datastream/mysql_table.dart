// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_column.dart';

/// MySQL table.
class MysqlTable {
  /// MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  final List<MysqlColumn>? mysqlColumns;
  /// Table name.
  final String? table;

  /// Creates a new [MysqlTable].
  /// [mysqlColumns] MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  MysqlTable({
    this.mysqlColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': ?mysqlColumns == null ? null : pulumi.Input.encodeList<MysqlColumn, Map<String, dynamic>>(mysqlColumns!, (value) => value.toMap()),
      'table': ?table,
    };
  }

  factory MysqlTable.fromMap(Map<String, dynamic> map) {
    return MysqlTable(
      mysqlColumns: map['mysqlColumns'] == null ? null : pulumi.Input.decodeList<MysqlColumn>(map['mysqlColumns'], (value) => MysqlColumn.fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}

