// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioningResponse2 {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String expirationMs;

  /// Type of partitioning.
  final String type;

  TimePartitioningResponse2({
    required this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationMs'] = expirationMs;
    map['type'] = type;
    return map;
  }

  factory TimePartitioningResponse2.fromMap(Map<String, dynamic> map) {
    return TimePartitioningResponse2(
      expirationMs: map['expirationMs'] as String,
      type: map['type'] as String,
    );
  }
}
