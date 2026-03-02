// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyWeeklySchedule {
  /// Indicates which weekday(s) snapshot(s) should be taken, accepts a list of week day names in english
  final pulumi.Input<List<String>>? days;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Weekly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;

  /// Creates a new [ElasticSnapshotPolicyWeeklySchedule].
  /// [days] Indicates which weekday(s) snapshot(s) should be taken, accepts a list of week day names in english
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Weekly snapshot count to keep
  ElasticSnapshotPolicyWeeklySchedule({
    this.days,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
    };
  }

  factory ElasticSnapshotPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyWeeklySchedule(
      days: map['days'] == null ? null : ((map['days'] as List).cast<String>()).input(),
      hour: map['hour'] == null ? null : (map['hour'] as int).input(),
      minute: map['minute'] == null ? null : (map['minute'] as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep'] as int).input(),
    );
  }
}

