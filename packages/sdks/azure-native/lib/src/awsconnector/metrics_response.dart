// ignore_for_file: unused_element, unnecessary_cast

import 'replication_time_value_response.dart';

/// Definition of Metrics
class MetricsResponse {
  /// A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final ReplicationTimeValueResponse? eventThreshold;
  /// Specifies whether the replication metrics are enabled.
  final String? status;

  /// Creates a new [MetricsResponse].
  /// [eventThreshold] A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  /// [status] Specifies whether the replication metrics are enabled.
  MetricsResponse({
    this.eventThreshold,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThreshold': ?eventThreshold == null ? null : eventThreshold!.toMap(),
      'status': ?status,
    };
  }

  factory MetricsResponse.fromMap(Map<String, dynamic> map) {
    return MetricsResponse(
      eventThreshold: map['eventThreshold'] == null ? null : ReplicationTimeValueResponse.fromMap((map['eventThreshold'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

