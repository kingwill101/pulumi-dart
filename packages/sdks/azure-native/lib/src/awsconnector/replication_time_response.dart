// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_time_value_response.dart';

/// Definition of ReplicationTime
class ReplicationTimeResponse {
  /// Specifies whether the replication time is enabled.
  final pulumi.Input<String>? status;
  /// A container specifying the time by which replication should be complete for all objects and operations on objects. A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics ``EventThreshold``.
  final pulumi.Input<ReplicationTimeValueResponse>? time;

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
      'time': ?pulumi.Input.mapOptionalInputValue<ReplicationTimeValueResponse, Map<String, dynamic>>(time, (value) => value.toMap()),
    };
  }

  factory ReplicationTimeResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationTimeResponse(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      time: map['time'] == null ? null : (ReplicationTimeValueResponse.fromMap((map['time']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

