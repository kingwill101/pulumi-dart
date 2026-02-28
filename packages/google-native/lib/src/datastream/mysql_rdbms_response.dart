// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database_response.dart';

/// MySQL database structure
class MysqlRdbmsResponse {
  /// Mysql databases on the server
  final List<MysqlDatabaseResponse> mysqlDatabases;

  /// Creates a new [MysqlRdbmsResponse].
  /// [mysqlDatabases] Mysql databases on the server
  MysqlRdbmsResponse({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] =
        pulumi.Input.encodeList<MysqlDatabaseResponse, Map<String, dynamic>>(
            mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory MysqlRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsResponse(
      mysqlDatabases: pulumi.Input.decodeList<MysqlDatabaseResponse>(
          map['mysqlDatabases'],
          (value) => MysqlDatabaseResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
