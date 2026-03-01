// ignore_for_file: unused_element, unnecessary_cast

class TimePartitioningResponse {
  /// [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
  final String expirationMs;

  /// [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  final String field;
  final bool requirePartitionFilter;

  /// [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.
  final String type;

  /// Creates a new [TimePartitioningResponse].
  /// [expirationMs] [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
  /// [field] [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  /// [requirePartitionFilter] Required.
  /// [type] [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.
  TimePartitioningResponse({
    required this.expirationMs,
    required this.field,
    required this.requirePartitionFilter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': expirationMs,
      'field': field,
      'requirePartitionFilter': requirePartitionFilter,
      'type': type,
    };
  }

  factory TimePartitioningResponse.fromMap(Map<String, dynamic> map) {
    return TimePartitioningResponse(
      expirationMs: map['expirationMs'] as String,
      field: map['field'] as String,
      requirePartitionFilter: map['requirePartitionFilter'] as bool,
      type: map['type'] as String,
    );
  }
}
