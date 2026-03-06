// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyMonthlyScheduleResponse {
  /// Indicates which days of the month snapshot (1-31) should be taken, accepts a list of integers
  final pulumi.Input<List<int>>? daysOfMonth;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Monthly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;

  /// Creates a new [ElasticSnapshotPolicyMonthlyScheduleResponse].
  /// [daysOfMonth] Indicates which days of the month snapshot (1-31) should be taken, accepts a list of integers
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Monthly snapshot count to keep
  const ElasticSnapshotPolicyMonthlyScheduleResponse({
    this.daysOfMonth,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonth': ?daysOfMonth,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
    };
  }

  factory ElasticSnapshotPolicyMonthlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyMonthlyScheduleResponse(
      daysOfMonth: (() { final guardedValue = map['daysOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotsToKeep: (() { final guardedValue = map['snapshotsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

