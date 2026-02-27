// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mysql_database_response2.dart';

/// MySQL database structure
class MysqlRdbmsResponse2 {
  /// Mysql databases on the server
  final List<MysqlDatabaseResponse2> mysqlDatabases;

  MysqlRdbmsResponse2({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] =
        Input.encodeList<MysqlDatabaseResponse2, Map<String, dynamic>>(
            mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory MysqlRdbmsResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsResponse2(
      mysqlDatabases: Input.decodeList<MysqlDatabaseResponse2>(
          map['mysqlDatabases'],
          (value) => MysqlDatabaseResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
