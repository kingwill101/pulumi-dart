// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_mysql_source_config_exclude_objects_mysql_database_mysql_table/stream_source_config_mysql_source_config_exclude_objects_mysql_database_mysql_table.dart';

class StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase {
  /// Database name.
  final String database;

  /// Tables in the database.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable>?
      mysqlTables;

  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = pulumi.Input.encodeList<
          StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable,
          Map<String, dynamic>>(mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase(
      database: map['database'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable>(
              map['mysqlTables'],
              (value) =>
                  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
