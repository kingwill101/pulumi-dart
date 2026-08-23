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
  const CassandraSchema({
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
      clusterKeys: (() { final guardedValue = map['clusterKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterKey>(guardedValue, (value) => ClusterKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Column>(guardedValue, (value) => Column.fromMap((value as Map).cast<String, dynamic>()))); })(),
      partitionKeys: (() { final guardedValue = map['partitionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CassandraPartitionKey>(guardedValue, (value) => CassandraPartitionKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
