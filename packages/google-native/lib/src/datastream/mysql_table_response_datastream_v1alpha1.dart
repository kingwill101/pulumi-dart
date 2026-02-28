// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_column_response_datastream_v1alpha1.dart';

/// MySQL table.
class MysqlTableResponseDatastreamV1alpha1 {
  /// MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  final List<MysqlColumnResponseDatastreamV1alpha1> mysqlColumns;

  /// Table name.
  final String tableName;

  /// Creates a new [MysqlTableResponseDatastreamV1alpha1].
  /// [mysqlColumns] MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  /// [tableName] Table name.
  MysqlTableResponseDatastreamV1alpha1({
    required this.mysqlColumns,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlColumns'] = pulumi.Input.encodeList<
        MysqlColumnResponseDatastreamV1alpha1,
        Map<String, dynamic>>(mysqlColumns, (value) => value.toMap());
    map['tableName'] = tableName;
    return map;
  }

  factory MysqlTableResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MysqlTableResponseDatastreamV1alpha1(
      mysqlColumns:
          pulumi.Input.decodeList<MysqlColumnResponseDatastreamV1alpha1>(
              map['mysqlColumns'],
              (value) => MysqlColumnResponseDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
    );
  }
}
