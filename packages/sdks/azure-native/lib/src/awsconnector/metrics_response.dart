// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_time_value_response.dart';

/// Definition of Metrics
class MetricsResponse {
  /// A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final pulumi.Input<ReplicationTimeValueResponse>? eventThreshold;
  /// Specifies whether the replication metrics are enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [MetricsResponse].
  /// [eventThreshold] A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  /// [status] Specifies whether the replication metrics are enabled.
  MetricsResponse({
    this.eventThreshold,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThreshold': ?pulumi.Input.mapOptionalInputValue<ReplicationTimeValueResponse, Map<String, dynamic>>(eventThreshold, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory MetricsResponse.fromMap(Map<String, dynamic> map) {
    return MetricsResponse(
      eventThreshold: (() { final guardedValue = map['eventThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationTimeValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

