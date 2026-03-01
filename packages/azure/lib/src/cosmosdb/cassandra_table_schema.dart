// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_schema_cluster_key.dart';
import 'cassandra_table_schema_column.dart';
import 'cassandra_table_schema_partition_key.dart';

class CassandraTableSchema {
  /// One or more `cluster_key` blocks as defined below.
  final List<CassandraTableSchemaClusterKey>? clusterKeys;
  /// One or more `column` blocks as defined below.
  final List<CassandraTableSchemaColumn> columns;
  /// One or more `partition_key` blocks as defined below.
  final List<CassandraTableSchemaPartitionKey> partitionKeys;

  /// Creates a new [CassandraTableSchema].
  /// [clusterKeys] One or more `cluster_key` blocks as defined below.
  /// [columns] One or more `column` blocks as defined below.
  /// [partitionKeys] One or more `partition_key` blocks as defined below.
  CassandraTableSchema({
    this.clusterKeys,
    required this.columns,
    required this.partitionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterKeys': ?clusterKeys == null ? null : pulumi.Input.encodeList<CassandraTableSchemaClusterKey, Map<String, dynamic>>(clusterKeys!, (value) => value.toMap()),
      'columns': pulumi.Input.encodeList<CassandraTableSchemaColumn, Map<String, dynamic>>(columns, (value) => value.toMap()),
      'partitionKeys': pulumi.Input.encodeList<CassandraTableSchemaPartitionKey, Map<String, dynamic>>(partitionKeys, (value) => value.toMap()),
    };
  }

  factory CassandraTableSchema.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchema(
      clusterKeys: map['clusterKeys'] == null ? null : pulumi.Input.decodeList<CassandraTableSchemaClusterKey>(map['clusterKeys'], (value) => CassandraTableSchemaClusterKey.fromMap((value as Map).cast<String, dynamic>())),
      columns: pulumi.Input.decodeList<CassandraTableSchemaColumn>(map['columns'], (value) => CassandraTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>())),
      partitionKeys: pulumi.Input.decodeList<CassandraTableSchemaPartitionKey>(map['partitionKeys'], (value) => CassandraTableSchemaPartitionKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

