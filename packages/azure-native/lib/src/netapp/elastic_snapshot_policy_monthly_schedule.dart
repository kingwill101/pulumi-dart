// ignore_for_file: unused_element, unnecessary_cast


/// Monthly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyMonthlySchedule {
  /// Indicates which days of the month snapshot (1-31) should be taken, accepts a list of integers
  final List<int>? daysOfMonth;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final int? hour;
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Monthly snapshot count to keep
  final int? snapshotsToKeep;

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
      daysOfMonth: map['daysOfMonth'] == null ? null : (map['daysOfMonth'] as List).cast<int>(),
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
    );
  }
}

