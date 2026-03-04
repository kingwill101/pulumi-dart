// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_time_value.dart';

/// Definition of Metrics
class Metrics {
  /// A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final pulumi.Input<ReplicationTimeValue>? eventThreshold;

  /// Specifies whether the replication metrics are enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [Metrics].
  /// [eventThreshold] A container specifying the time threshold for emitting the ``s3:Replication:OperationMissedThreshold`` event. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  /// [status] Specifies whether the replication metrics are enabled.
  Metrics({this.eventThreshold, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicationTimeValue,
            Map<String, dynamic>
          >(eventThreshold, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory Metrics.fromMap(Map<String, dynamic> map) {
    return Metrics(
      eventThreshold: (() {
        final guardedValue = map['eventThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicationTimeValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
