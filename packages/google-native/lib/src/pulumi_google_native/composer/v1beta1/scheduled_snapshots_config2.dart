// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for scheduled snapshot creation mechanism.
class ScheduledSnapshotsConfig2 {
  /// Optional. Whether scheduled snapshots creation is enabled.
  final bool? enabled;

  /// Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  final String? snapshotCreationSchedule;

  /// Optional. The Cloud Storage location for storing automatically created snapshots.
  final String? snapshotLocation;

  /// Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  final String? timeZone;

  ScheduledSnapshotsConfig2({
    this.enabled,
    this.snapshotCreationSchedule,
    this.snapshotLocation,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
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

  factory ScheduledSnapshotsConfig2.fromMap(Map<String, dynamic> map) {
    return ScheduledSnapshotsConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
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
