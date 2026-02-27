// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table_response_datastream_v1alpha1.dart';

/// MySQL database.
class MysqlDatabaseResponseDatastreamV1alpha1 {
  /// Database name.
  final String databaseName;

  /// Tables in the database.
  final List<MysqlTableResponseDatastreamV1alpha1> mysqlTables;

  MysqlDatabaseResponseDatastreamV1alpha1({
    required this.databaseName,
    required this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['mysqlTables'] = pulumi.Input.encodeList<
        MysqlTableResponseDatastreamV1alpha1,
        Map<String, dynamic>>(mysqlTables, (value) => value.toMap());
    return map;
  }

  factory MysqlDatabaseResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MysqlDatabaseResponseDatastreamV1alpha1(
      databaseName: map['databaseName'] as String,
      mysqlTables:
          pulumi.Input.decodeList<MysqlTableResponseDatastreamV1alpha1>(
              map['mysqlTables'],
              (value) => MysqlTableResponseDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
