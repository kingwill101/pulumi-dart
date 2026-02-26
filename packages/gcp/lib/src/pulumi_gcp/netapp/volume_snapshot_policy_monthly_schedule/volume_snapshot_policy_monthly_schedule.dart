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

  VolumeSnapshotPolicyMonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfMonthValue = daysOfMonth;
    if (daysOfMonthValue != null) {
      map['daysOfMonth'] = daysOfMonthValue;
    }
    final hourValue = hour;
    if (hourValue != null) {
      map['hour'] = hourValue;
    }
    final minuteValue = minute;
    if (minuteValue != null) {
      map['minute'] = minuteValue;
    }
    map['snapshotsToKeep'] = snapshotsToKeep;
    return map;
  }

  factory VolumeSnapshotPolicyMonthlySchedule.fromMap(
      Map<String, dynamic> map) {
    return VolumeSnapshotPolicyMonthlySchedule(
      daysOfMonth:
          map['daysOfMonth'] == null ? null : map['daysOfMonth'] as String,
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}
