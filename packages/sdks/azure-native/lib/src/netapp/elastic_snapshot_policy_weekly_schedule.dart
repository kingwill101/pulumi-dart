// ignore_for_file: unused_element, unnecessary_cast


/// Weekly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyWeeklySchedule {
  /// Indicates which weekday(s) snapshot(s) should be taken, accepts a list of week day names in english
  final List<String>? days;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final int? hour;
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Weekly snapshot count to keep
  final int? snapshotsToKeep;

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
      days: map['days'] == null ? null : (map['days'] as List).cast<String>(),
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
    );
  }
}

