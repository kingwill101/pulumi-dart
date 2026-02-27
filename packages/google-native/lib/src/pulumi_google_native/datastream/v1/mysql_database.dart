// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_table.dart';

/// MySQL database.
class MysqlDatabase {
  /// Database name.
  final String? database;

  /// Tables in the database.
  final List<MysqlTable>? mysqlTables;

  MysqlDatabase({
    this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = Input.encodeList<MysqlTable, Map<String, dynamic>>(
          mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlDatabase.fromMap(Map<String, dynamic> map) {
    return MysqlDatabase(
      database: map['database'] == null ? null : map['database'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : Input.decodeList<MysqlTable>(
              map['mysqlTables'],
              (value) =>
                  MysqlTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
