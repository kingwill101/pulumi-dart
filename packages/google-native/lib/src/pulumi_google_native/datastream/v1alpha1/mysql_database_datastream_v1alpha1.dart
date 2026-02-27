// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table_datastream_v1alpha1.dart';

/// MySQL database.
class MysqlDatabaseDatastreamV1alpha1 {
  /// Database name.
  final String? databaseName;

  /// Tables in the database.
  final List<MysqlTableDatastreamV1alpha1>? mysqlTables;

  MysqlDatabaseDatastreamV1alpha1({
    this.databaseName,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final mysqlTablesValue = mysqlTables;
    if (mysqlTablesValue != null) {
      map['mysqlTables'] = pulumi.Input.encodeList<MysqlTableDatastreamV1alpha1,
          Map<String, dynamic>>(mysqlTablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlDatabaseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlDatabaseDatastreamV1alpha1(
      databaseName:
          map['databaseName'] == null ? null : map['databaseName'] as String,
      mysqlTables: map['mysqlTables'] == null
          ? null
          : pulumi.Input.decodeList<MysqlTableDatastreamV1alpha1>(
              map['mysqlTables'],
              (value) => MysqlTableDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
