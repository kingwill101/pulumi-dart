// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_partition_key_response.dart';
import 'cluster_key_response.dart';
import 'column_response.dart';

/// Cosmos DB Cassandra table schema
class CassandraSchemaResponse {
  /// List of cluster key.
  final pulumi.Input<List<ClusterKeyResponse>>? clusterKeys;
  /// List of Cassandra table columns.
  final pulumi.Input<List<ColumnResponse>>? columns;
  /// List of partition key.
  final pulumi.Input<List<CassandraPartitionKeyResponse>>? partitionKeys;

  /// Creates a new [CassandraSchemaResponse].
  /// [clusterKeys] List of cluster key.
  /// [columns] List of Cassandra table columns.
  /// [partitionKeys] List of partition key.
  CassandraSchemaResponse({
    this.clusterKeys,
    this.columns,
    this.partitionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterKeys': ?pulumi.Input.mapOptionalInputValue<List<ClusterKeyResponse>, List<Map<String, dynamic>>>(clusterKeys, (value) => pulumi.Input.encodeList<ClusterKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ColumnResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionKeys': ?pulumi.Input.mapOptionalInputValue<List<CassandraPartitionKeyResponse>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<CassandraPartitionKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CassandraSchemaResponse.fromMap(Map<String, dynamic> map) {
    return CassandraSchemaResponse(
      clusterKeys: map['clusterKeys'] == null ? null : (pulumi.Input.decodeList<ClusterKeyResponse>(map['clusterKeys']!, (value) => ClusterKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<ColumnResponse>(map['columns']!, (value) => ColumnResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionKeys: map['partitionKeys'] == null ? null : (pulumi.Input.decodeList<CassandraPartitionKeyResponse>(map['partitionKeys']!, (value) => CassandraPartitionKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

