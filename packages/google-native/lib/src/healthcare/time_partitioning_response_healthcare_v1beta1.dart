// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioningResponseHealthcareV1beta1 {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String expirationMs;

  /// Type of partitioning.
  final String type;

  /// Creates a new [TimePartitioningResponseHealthcareV1beta1].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  TimePartitioningResponseHealthcareV1beta1({
    required this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationMs'] = expirationMs;
    map['type'] = type;
    return map;
  }

  factory TimePartitioningResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TimePartitioningResponseHealthcareV1beta1(
      expirationMs: map['expirationMs'] as String,
      type: map['type'] as String,
    );
  }
}
