// ignore_for_file: unused_element, unnecessary_cast

class VolumeSnapshotPolicyMonthlySchedule {
  /// Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'.
  final String? daysOfMonth;

  /// Set the hour to create the snapshot (0-23), defaults to midnight (0).
  final int? hour;

  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final int? minute;

  /// The maximum number of snapshots to keep for the monthly schedule
  final int snapshotsToKeep;

  /// Creates a new [VolumeSnapshotPolicyMonthlySchedule].
  /// [daysOfMonth] Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'.
  /// [hour] Set the hour to create the snapshot (0-23), defaults to midnight (0).
  /// [minute] Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  /// [snapshotsToKeep] The maximum number of snapshots to keep for the monthly schedule
  VolumeSnapshotPolicyMonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonth': ?daysOfMonth,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory VolumeSnapshotPolicyMonthlySchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return VolumeSnapshotPolicyMonthlySchedule(
      daysOfMonth: map['daysOfMonth'] == null
          ? null
          : map['daysOfMonth'] as String,
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}
