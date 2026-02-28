// ignore_for_file: unused_element, unnecessary_cast

class ProjectSinkBigqueryOptions {
  /// Whether to use [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables).
  /// By default, Logging creates dated tables based on the log entries' timestamps, e.g. `syslog_20170523`. With partitioned
  /// tables the date suffix is no longer present and [special query syntax](https://cloud.google.com/bigquery/docs/querying-partitioned-tables)
  /// has to be used instead. In both cases, tables are sharded based on UTC timezone.
  final bool usePartitionedTables;

  /// Creates a new [ProjectSinkBigqueryOptions].
  /// [usePartitionedTables] Whether to use [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables).
  ProjectSinkBigqueryOptions({
    required this.usePartitionedTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['usePartitionedTables'] = usePartitionedTables;
    return map;
  }

  factory ProjectSinkBigqueryOptions.fromMap(Map<String, dynamic> map) {
    return ProjectSinkBigqueryOptions(
      usePartitionedTables: map['usePartitionedTables'] as bool,
    );
  }
}
