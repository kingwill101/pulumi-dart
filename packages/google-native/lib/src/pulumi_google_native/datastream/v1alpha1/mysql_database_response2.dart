// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mysql_table_response2.dart';

/// MySQL database.
class MysqlDatabaseResponse2 {
  /// Database name.
  final String databaseName;

  /// Tables in the database.
  final List<MysqlTableResponse2> mysqlTables;

  MysqlDatabaseResponse2({
    required this.databaseName,
    required this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['mysqlTables'] =
        Input.encodeList<MysqlTableResponse2, Map<String, dynamic>>(
            mysqlTables, (value) => value.toMap());
    return map;
  }

  factory MysqlDatabaseResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlDatabaseResponse2(
      databaseName: map['databaseName'] as String,
      mysqlTables: Input.decodeList<MysqlTableResponse2>(
          map['mysqlTables'],
          (value) => MysqlTableResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
