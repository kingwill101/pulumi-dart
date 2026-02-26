// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mysql_database_response.dart';

/// MySQL database structure
class MysqlRdbmsResponse {
  /// Mysql databases on the server
  final List<MysqlDatabaseResponse> mysqlDatabases;

  MysqlRdbmsResponse({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] =
        Input.encodeList<MysqlDatabaseResponse, Map<String, dynamic>>(
            mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory MysqlRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsResponse(
      mysqlDatabases: Input.decodeList<MysqlDatabaseResponse>(
          map['mysqlDatabases'],
          (value) => MysqlDatabaseResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
