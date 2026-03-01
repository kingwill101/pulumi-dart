// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for scheduled snapshot creation mechanism.
class ScheduledSnapshotsConfigResponse {
  /// Optional. Whether scheduled snapshots creation is enabled.
  final bool enabled;

  /// Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  final String snapshotCreationSchedule;

  /// Optional. The Cloud Storage location for storing automatically created snapshots.
  final String snapshotLocation;

  /// Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  final String timeZone;

  /// Creates a new [ScheduledSnapshotsConfigResponse].
  /// [enabled] Optional. Whether scheduled snapshots creation is enabled.
  /// [snapshotCreationSchedule] Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  /// [snapshotLocation] Optional. The Cloud Storage location for storing automatically created snapshots.
  /// [timeZone] Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  ScheduledSnapshotsConfigResponse({
    required this.enabled,
    required this.snapshotCreationSchedule,
    required this.snapshotLocation,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'snapshotCreationSchedule': snapshotCreationSchedule,
      'snapshotLocation': snapshotLocation,
      'timeZone': timeZone,
    };
  }

  factory ScheduledSnapshotsConfigResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledSnapshotsConfigResponse(
      enabled: map['enabled'] as bool,
      snapshotCreationSchedule: map['snapshotCreationSchedule'] as String,
      snapshotLocation: map['snapshotLocation'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
