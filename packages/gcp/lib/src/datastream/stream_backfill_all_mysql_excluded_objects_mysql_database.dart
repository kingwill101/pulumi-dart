// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mysql_excluded_objects_mysql_database_mysql_table.dart';

class StreamBackfillAllMysqlExcludedObjectsMysqlDatabase {
  /// Database name.
  final String database;

  /// Tables in the database.
  /// Structure is documented below.
  final List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable>?
      mysqlTables;

  /// Creates a new [StreamBackfillAllMysqlExcludedObjectsMysqlDatabase].
  /// [database] Database name.
  /// [mysqlTables] Tables in the database.
  StreamBackfillAllMysqlExcludedObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = pulumi.Input.encodeList<
          StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable,
          Map<String, dynamic>>(mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamBackfillAllMysqlExcludedObjectsMysqlDatabase.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjectsMysqlDatabase(
      database: map['database'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable>(
              map['mysqlTables'],
              (value) =>
                  StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
