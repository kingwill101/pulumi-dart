// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyMonthlySchedule {
  /// Indicates which days of the month snapshot (1-31) should be taken, accepts a list of integers
  final pulumi.Input<List<int>>? daysOfMonth;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Monthly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;

  /// Creates a new [ElasticSnapshotPolicyMonthlySchedule].
  /// [daysOfMonth] Indicates which days of the month snapshot (1-31) should be taken, accepts a list of integers
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Monthly snapshot count to keep
  ElasticSnapshotPolicyMonthlySchedule({
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

  factory ElasticSnapshotPolicyMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyMonthlySchedule(
      daysOfMonth: map['daysOfMonth'] == null ? null : ((map['daysOfMonth'] as List).cast<int>()).input(),
      hour: map['hour'] == null ? null : (map['hour'] as int).input(),
      minute: map['minute'] == null ? null : (map['minute'] as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep'] as int).input(),
    );
  }
}

