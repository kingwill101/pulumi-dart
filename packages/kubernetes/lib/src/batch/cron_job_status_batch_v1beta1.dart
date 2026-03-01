// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/object_reference.dart';

/// CronJobStatus represents the current state of a cron job.
class CronJobStatusBatchV1beta1 {
  /// A list of pointers to currently running jobs.
  final List<ObjectReference>? active;
  /// Information when was the last time the job was successfully scheduled.
  final String? lastScheduleTime;

  /// Creates a new [CronJobStatusBatchV1beta1].
  /// [active] A list of pointers to currently running jobs.
  /// [lastScheduleTime] Information when was the last time the job was successfully scheduled.
  CronJobStatusBatchV1beta1({
    this.active,
    this.lastScheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active == null ? null : pulumi.Input.encodeList<ObjectReference, Map<String, dynamic>>(active!, (value) => value.toMap()),
      'lastScheduleTime': ?lastScheduleTime,
    };
  }

  factory CronJobStatusBatchV1beta1.fromMap(Map<String, dynamic> map) {
    return CronJobStatusBatchV1beta1(
      active: map['active'] == null ? null : pulumi.Input.decodeList<ObjectReference>(map['active'], (value) => ObjectReference.fromMap((value as Map).cast<String, dynamic>())),
      lastScheduleTime: map['lastScheduleTime'] == null ? null : map['lastScheduleTime'] as String,
    );
  }
}

