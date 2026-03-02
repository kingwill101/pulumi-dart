// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_partition_key.dart';
import 'cluster_key.dart';
import 'column.dart';

/// Cosmos DB Cassandra table schema
class CassandraSchema {
  /// List of cluster key.
  final pulumi.Input<List<ClusterKey>>? clusterKeys;
  /// List of Cassandra table columns.
  final pulumi.Input<List<Column>>? columns;
  /// List of partition key.
  final pulumi.Input<List<CassandraPartitionKey>>? partitionKeys;

  /// Creates a new [CassandraSchema].
  /// [clusterKeys] List of cluster key.
  /// [columns] List of Cassandra table columns.
  /// [partitionKeys] List of partition key.
  CassandraSchema({
    this.clusterKeys,
    this.columns,
    this.partitionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterKeys': ?pulumi.Input.mapOptionalInputValue<List<ClusterKey>, List<Map<String, dynamic>>>(clusterKeys, (value) => pulumi.Input.encodeList<ClusterKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columns': ?pulumi.Input.mapOptionalInputValue<List<Column>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<Column, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionKeys': ?pulumi.Input.mapOptionalInputValue<List<CassandraPartitionKey>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<CassandraPartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CassandraSchema.fromMap(Map<String, dynamic> map) {
    return CassandraSchema(
      clusterKeys: map['clusterKeys'] == null ? null : (pulumi.Input.decodeList<ClusterKey>(map['clusterKeys'], (value) => ClusterKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<Column>(map['columns'], (value) => Column.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionKeys: map['partitionKeys'] == null ? null : (pulumi.Input.decodeList<CassandraPartitionKey>(map['partitionKeys'], (value) => CassandraPartitionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

