// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig {
  /// When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  final bool enabled;

  /// Snapshot schedule, in the unix-cron format.
  final String snapshotCreationSchedule;

  /// the URI of a bucket folder where to save the snapshot.
  final String snapshotLocation;

  /// A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  final String timeZone;

  GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig({
    required this.enabled,
    required this.snapshotCreationSchedule,
    required this.snapshotLocation,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['snapshotCreationSchedule'] = snapshotCreationSchedule;
    map['snapshotLocation'] = snapshotLocation;
    map['timeZone'] = timeZone;
    return map;
  }

  factory GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig(
      enabled: map['enabled'] as bool,
      snapshotCreationSchedule: map['snapshotCreationSchedule'] as String,
      snapshotLocation: map['snapshotLocation'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
