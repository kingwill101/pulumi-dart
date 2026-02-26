// ignore_for_file: unused_element, unnecessary_cast

class VolumeSnapshotPolicyHourlySchedule {
  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final int? minute;

  /// The maximum number of snapshots to keep for the hourly schedule.
  final int snapshotsToKeep;

  VolumeSnapshotPolicyHourlySchedule({
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minuteValue = minute;
    if (minuteValue != null) {
      map['minute'] = minuteValue;
    }
    map['snapshotsToKeep'] = snapshotsToKeep;
    return map;
  }

  factory VolumeSnapshotPolicyHourlySchedule.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicyHourlySchedule(
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}
