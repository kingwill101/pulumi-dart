// ignore_for_file: unused_element, unnecessary_cast

import 'time_partitioning_type2.dart';

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioning3 {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String? expirationMs;

  /// Type of partitioning.
  final TimePartitioningType2? type;

  TimePartitioning3({
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

  factory TimePartitioning3.fromMap(Map<String, dynamic> map) {
    return TimePartitioning3(
      expirationMs:
          map['expirationMs'] == null ? null : map['expirationMs'] as String,
      type: map['type'] == null
          ? null
          : TimePartitioningType2.fromValue(map['type'] as String),
    );
  }
}
