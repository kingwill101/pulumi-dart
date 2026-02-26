// ignore_for_file: unused_element, unnecessary_cast

/// Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding
class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse {
  /// The Data Catalog resource name of the dataset entry the current table belongs to, for example, `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`.
  final String dataset;

  /// Total number of shards.
  final String shardCount;

  /// The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the `table_prefix` is `MyTable`.
  final String tablePrefix;

  GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse({
    required this.dataset,
    required this.shardCount,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    map['shardCount'] = shardCount;
    map['tablePrefix'] = tablePrefix;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse(
      dataset: map['dataset'] as String,
      shardCount: map['shardCount'] as String,
      tablePrefix: map['tablePrefix'] as String,
    );
  }
}
