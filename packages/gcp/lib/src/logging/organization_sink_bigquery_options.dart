// ignore_for_file: unused_element, unnecessary_cast

class OrganizationSinkBigqueryOptions {
  /// Whether to use [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables).
  /// By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned
  /// tables the date suffix is no longer present and [special query syntax](https://cloud.google.com/bigquery/docs/querying-partitioned-tables)
  /// has to be used instead. In both cases, tables are sharded based on UTC timezone.
  final bool usePartitionedTables;

  /// Creates a new [OrganizationSinkBigqueryOptions].
  /// [usePartitionedTables] Whether to use [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables).
  OrganizationSinkBigqueryOptions({required this.usePartitionedTables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'usePartitionedTables': usePartitionedTables};
  }

  factory OrganizationSinkBigqueryOptions.fromMap(Map<String, dynamic> map) {
    return OrganizationSinkBigqueryOptions(
      usePartitionedTables: map['usePartitionedTables'] as bool,
    );
  }
}
