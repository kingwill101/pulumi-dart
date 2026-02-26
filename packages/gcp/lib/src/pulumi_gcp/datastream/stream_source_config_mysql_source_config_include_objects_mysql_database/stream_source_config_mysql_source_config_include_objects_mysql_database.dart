// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table/stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase {
  /// Database name.
  final String database;

  /// Tables in the database.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable>?
      mysqlTables;

  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = Input.encodeList<
          StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable,
          Map<String, dynamic>>(mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase(
      database: map['database'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable>(
              map['mysqlTables'],
              (value) =>
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
