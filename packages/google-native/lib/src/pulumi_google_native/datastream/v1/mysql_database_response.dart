// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'mysql_table_response.dart';

/// MySQL database.
class MysqlDatabaseResponse {
  /// Database name.
  final String database;

  /// Tables in the database.
  final List<MysqlTableResponse> mysqlTables;

  MysqlDatabaseResponse({
    required this.database,
    required this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['mysqlTables'] =
        Input.encodeList<MysqlTableResponse, Map<String, dynamic>>(
            mysqlTables, (value) => value.toMap());
    return map;
  }

  factory MysqlDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return MysqlDatabaseResponse(
      database: map['database'] as String,
      mysqlTables: Input.decodeList<MysqlTableResponse>(
          map['mysqlTables'],
          (value) => MysqlTableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
