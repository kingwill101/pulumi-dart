// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_table2.dart';

/// MySQL database.
class MysqlDatabase2 {
  /// Database name.
  final String? databaseName;

  /// Tables in the database.
  final List<MysqlTable2>? mysqlTables;

  MysqlDatabase2({
    this.databaseName,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = Input.encodeList<MysqlTable2, Map<String, dynamic>>(
          mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlDatabase2.fromMap(Map<String, dynamic> map) {
    return MysqlDatabase2(
      databaseName:
          map['databaseName'] == null ? null : map['databaseName'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : Input.decodeList<MysqlTable2>(
              map['mysqlTables'],
              (value) =>
                  MysqlTable2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
