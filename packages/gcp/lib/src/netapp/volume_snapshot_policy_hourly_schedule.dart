// ignore_for_file: unused_element, unnecessary_cast

class VolumeSnapshotPolicyHourlySchedule {
  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final int? minute;

  /// The maximum number of snapshots to keep for the hourly schedule.
  final int snapshotsToKeep;

  /// Creates a new [VolumeSnapshotPolicyHourlySchedule].
  /// [minute] Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  /// [snapshotsToKeep] The maximum number of snapshots to keep for the hourly schedule.
  VolumeSnapshotPolicyHourlySchedule({
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory VolumeSnapshotPolicyHourlySchedule.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicyHourlySchedule(
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}
