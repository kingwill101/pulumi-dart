// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database.dart';

/// MySQL database structure
class MysqlRdbms {
  /// Mysql databases on the server
  final List<MysqlDatabase>? mysqlDatabases;

  /// Creates a new [MysqlRdbms].
  /// [mysqlDatabases] Mysql databases on the server
  MysqlRdbms({
    this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlDatabasesValue = mysqlDatabases;
    if (mysqlDatabasesValue != null) {
      map['mysqlDatabases'] =
          pulumi.Input.encodeList<MysqlDatabase, Map<String, dynamic>>(
              mysqlDatabasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlRdbms.fromMap(Map<String, dynamic> map) {
    return MysqlRdbms(
      mysqlDatabases: map['mysqlDatabases'] == null
          ? null
          : pulumi.Input.decodeList<MysqlDatabase>(
              map['mysqlDatabases'],
              (value) => MysqlDatabase.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
