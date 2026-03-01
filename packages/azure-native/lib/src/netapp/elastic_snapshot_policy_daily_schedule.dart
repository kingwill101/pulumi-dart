// ignore_for_file: unused_element, unnecessary_cast


/// Daily Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyDailySchedule {
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final int? hour;
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Daily snapshot count to keep
  final int? snapshotsToKeep;

  /// Creates a new [ElasticSnapshotPolicyDailySchedule].
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Daily snapshot count to keep
  ElasticSnapshotPolicyDailySchedule({
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
    };
  }

  factory ElasticSnapshotPolicyDailySchedule.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyDailySchedule(
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
    );
  }
}

