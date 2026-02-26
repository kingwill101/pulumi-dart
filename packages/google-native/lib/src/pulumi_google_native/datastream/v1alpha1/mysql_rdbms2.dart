// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mysql_database2.dart';

/// MySQL database structure
class MysqlRdbms2 {
  /// Mysql databases on the server
  final List<MysqlDatabase2>? mysqlDatabases;

  MysqlRdbms2({
    this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlDatabasesValue = mysqlDatabases;
    if (mysqlDatabasesValue != null) {
      map['mysqlDatabases'] =
          Input.encodeList<MysqlDatabase2, Map<String, dynamic>>(
              mysqlDatabasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlRdbms2.fromMap(Map<String, dynamic> map) {
    return MysqlRdbms2(
      mysqlDatabases: map['mysqlDatabases'] == null
          ? null
          : Input.decodeList<MysqlDatabase2>(
              map['mysqlDatabases'],
              (value) => MysqlDatabase2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
