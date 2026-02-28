// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig {
  /// When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  final bool enabled;

  /// Snapshot schedule, in the unix-cron format.
  final String? snapshotCreationSchedule;

  /// the URI of a bucket folder where to save the snapshot.
  final String? snapshotLocation;

  /// A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  final String? timeZone;

  /// Creates a new [EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig].
  /// [enabled] When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  /// [snapshotCreationSchedule] Snapshot schedule, in the unix-cron format.
  /// [snapshotLocation] the URI of a bucket folder where to save the snapshot.
  /// [timeZone] A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig({
    required this.enabled,
    this.snapshotCreationSchedule,
    this.snapshotLocation,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final snapshotCreationScheduleValue = snapshotCreationSchedule;
    if (snapshotCreationScheduleValue != null) {
      map['snapshotCreationSchedule'] = snapshotCreationScheduleValue;
    }
    final snapshotLocationValue = snapshotLocation;
    if (snapshotLocationValue != null) {
      map['snapshotLocation'] = snapshotLocationValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig(
      enabled: map['enabled'] as bool,
      snapshotCreationSchedule: map['snapshotCreationSchedule'] == null
          ? null
          : map['snapshotCreationSchedule'] as String,
      snapshotLocation: map['snapshotLocation'] == null
          ? null
          : map['snapshotLocation'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
