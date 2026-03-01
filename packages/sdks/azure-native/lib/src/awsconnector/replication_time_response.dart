// ignore_for_file: unused_element, unnecessary_cast

import 'replication_time_value_response.dart';

/// Definition of ReplicationTime
class ReplicationTimeResponse {
  /// Specifies whether the replication time is enabled.
  final String? status;
  /// A container specifying the time by which replication should be complete for all objects and operations on objects. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final ReplicationTimeValueResponse? time;

  /// Creates a new [ReplicationTimeResponse].
  /// [status] Specifies whether the replication time is enabled.
  /// [time] A container specifying the time by which replication should be complete for all objects and operations on objects. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  ReplicationTimeResponse({
    this.status,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'time': ?time == null ? null : time!.toMap(),
    };
  }

  factory ReplicationTimeResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationTimeResponse(
      status: map['status'] == null ? null : map['status'] as String,
      time: map['time'] == null ? null : ReplicationTimeValueResponse.fromMap((map['time'] as Map).cast<String, dynamic>()),
    );
  }
}

