// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database_datastream_v1alpha1.dart';

/// MySQL database structure
class MysqlRdbmsDatastreamV1alpha1 {
  /// Mysql databases on the server
  final List<MysqlDatabaseDatastreamV1alpha1>? mysqlDatabases;

  MysqlRdbmsDatastreamV1alpha1({
    this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlDatabasesValue = mysqlDatabases;
    if (mysqlDatabasesValue != null) {
      map['mysqlDatabases'] = pulumi.Input.encodeList<
          MysqlDatabaseDatastreamV1alpha1,
          Map<String, dynamic>>(mysqlDatabasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MysqlRdbmsDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsDatastreamV1alpha1(
      mysqlDatabases: map['mysqlDatabases'] == null
          ? null
          : pulumi.Input.decodeList<MysqlDatabaseDatastreamV1alpha1>(
              map['mysqlDatabases'],
              (value) => MysqlDatabaseDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
