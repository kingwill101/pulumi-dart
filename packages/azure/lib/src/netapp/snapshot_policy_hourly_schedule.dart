// ignore_for_file: unused_element, unnecessary_cast


class SnapshotPolicyHourlySchedule {
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final int minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final int snapshotsToKeep;

  /// Creates a new [SnapshotPolicyHourlySchedule].
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  SnapshotPolicyHourlySchedule({
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory SnapshotPolicyHourlySchedule.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyHourlySchedule(
      minute: map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

