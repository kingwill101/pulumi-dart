// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database_response_datastream_v1alpha1.dart';

/// MySQL database structure
class MysqlRdbmsResponseDatastreamV1alpha1 {
  /// Mysql databases on the server
  final List<MysqlDatabaseResponseDatastreamV1alpha1> mysqlDatabases;

  /// Creates a new [MysqlRdbmsResponseDatastreamV1alpha1].
  /// [mysqlDatabases] Mysql databases on the server
  MysqlRdbmsResponseDatastreamV1alpha1({required this.mysqlDatabases});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases':
          pulumi.Input.encodeList<
            MysqlDatabaseResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(mysqlDatabases, (value) => value.toMap()),
    };
  }

  factory MysqlRdbmsResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MysqlRdbmsResponseDatastreamV1alpha1(
      mysqlDatabases:
          pulumi.Input.decodeList<MysqlDatabaseResponseDatastreamV1alpha1>(
            map['mysqlDatabases'],
            (value) => MysqlDatabaseResponseDatastreamV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
