// ignore_for_file: unused_element, unnecessary_cast

import 'time_partitioning_type.dart';

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String? expirationMs;

  /// Type of partitioning.
  final TimePartitioningType? type;

  /// Creates a new [TimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  TimePartitioning({
    this.expirationMs,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationMsValue = expirationMs;
    if (expirationMsValue != null) {
      map['expirationMs'] = expirationMsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory TimePartitioning.fromMap(Map<String, dynamic> map) {
    return TimePartitioning(
      expirationMs:
          map['expirationMs'] == null ? null : map['expirationMs'] as String,
      type: map['type'] == null
          ? null
          : TimePartitioningType.fromValue(map['type'] as String),
    );
  }
}
