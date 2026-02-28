// ignore_for_file: unused_element, unnecessary_cast

class GetTableTimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  final int expirationMs;

  /// The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time.
  final String field;

  /// If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final bool requirePartitionFilter;

  /// The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.
  final String type;

  /// Creates a new [GetTableTimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [field] The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time.
  /// [requirePartitionFilter] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  /// [type] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.
  GetTableTimePartitioning({
    required this.expirationMs,
    required this.field,
    required this.requirePartitionFilter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationMs'] = expirationMs;
    map['field'] = field;
    map['requirePartitionFilter'] = requirePartitionFilter;
    map['type'] = type;
    return map;
  }

  factory GetTableTimePartitioning.fromMap(Map<String, dynamic> map) {
    return GetTableTimePartitioning(
      expirationMs: map['expirationMs'] as int,
      field: map['field'] as String,
      requirePartitionFilter: map['requirePartitionFilter'] as bool,
      type: map['type'] as String,
    );
  }
}
