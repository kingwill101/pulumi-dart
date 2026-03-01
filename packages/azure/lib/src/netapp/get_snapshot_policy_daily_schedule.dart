// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotPolicyDailySchedule {
  /// Hour of the day that the snapshots will be created.
  final int hour;
  /// Minute of the hour that the snapshots will be created.
  final int minute;
  /// How many hourly snapshots to keep.
  final int snapshotsToKeep;

  /// Creates a new [GetSnapshotPolicyDailySchedule].
  /// [hour] Hour of the day that the snapshots will be created.
  /// [minute] Minute of the hour that the snapshots will be created.
  /// [snapshotsToKeep] How many hourly snapshots to keep.
  GetSnapshotPolicyDailySchedule({
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory GetSnapshotPolicyDailySchedule.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyDailySchedule(
      hour: map['hour'] as int,
      minute: map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

