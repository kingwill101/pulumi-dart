// ignore_for_file: unused_element, unnecessary_cast

class TimePartitioning {
  /// [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
  final String? expirationMs;

  /// [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  final String? field;
  final bool? requirePartitionFilter;

  /// [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.
  final String? type;

  /// Creates a new [TimePartitioning].
  /// [expirationMs] [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
  /// [field] [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  /// [requirePartitionFilter] Optional.
  /// [type] [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.
  TimePartitioning({
    this.expirationMs,
    this.field,
    this.requirePartitionFilter,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationMsValue = expirationMs;
    if (expirationMsValue != null) {
      map['expirationMs'] = expirationMsValue;
    }
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final requirePartitionFilterValue = requirePartitionFilter;
    if (requirePartitionFilterValue != null) {
      map['requirePartitionFilter'] = requirePartitionFilterValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TimePartitioning.fromMap(Map<String, dynamic> map) {
    return TimePartitioning(
      expirationMs:
          map['expirationMs'] == null ? null : map['expirationMs'] as String,
      field: map['field'] == null ? null : map['field'] as String,
      requirePartitionFilter: map['requirePartitionFilter'] == null
          ? null
          : map['requirePartitionFilter'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
