// ignore_for_file: unused_element, unnecessary_cast

/// Options that change functionality of a sink exporting data to BigQuery.
class BigQueryOptions {
  /// Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.
  final bool? usePartitionedTables;

  /// Creates a new [BigQueryOptions].
  /// [usePartitionedTables] Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has to be used instead. In both cases, tables are sharded based on UTC timezone.
  BigQueryOptions({this.usePartitionedTables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'usePartitionedTables': ?usePartitionedTables};
  }

  factory BigQueryOptions.fromMap(Map<String, dynamic> map) {
    return BigQueryOptions(
      usePartitionedTables: map['usePartitionedTables'] == null
          ? null
          : map['usePartitionedTables'] as bool,
    );
  }
}
