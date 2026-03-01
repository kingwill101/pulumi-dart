// ignore_for_file: unused_element, unnecessary_cast

import 'replication_time_value.dart';

/// Definition of Metrics
class Metrics {
  /// A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final ReplicationTimeValue? eventThreshold;
  /// Specifies whether the replication metrics are enabled.
  final String? status;

  /// Creates a new [Metrics].
  /// [eventThreshold] A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  /// [status] Specifies whether the replication metrics are enabled.
  Metrics({
    this.eventThreshold,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThreshold': ?eventThreshold == null ? null : eventThreshold!.toMap(),
      'status': ?status,
    };
  }

  factory Metrics.fromMap(Map<String, dynamic> map) {
    return Metrics(
      eventThreshold: map['eventThreshold'] == null ? null : ReplicationTimeValue.fromMap((map['eventThreshold'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

