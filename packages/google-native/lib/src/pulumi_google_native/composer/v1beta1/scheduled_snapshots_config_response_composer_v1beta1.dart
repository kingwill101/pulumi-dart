// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for scheduled snapshot creation mechanism.
class ScheduledSnapshotsConfigResponseComposerV1beta1 {
  /// Optional. Whether scheduled snapshots creation is enabled.
  final bool enabled;

  /// Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  final String snapshotCreationSchedule;

  /// Optional. The Cloud Storage location for storing automatically created snapshots.
  final String snapshotLocation;

  /// Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  final String timeZone;

  ScheduledSnapshotsConfigResponseComposerV1beta1({
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

  factory ScheduledSnapshotsConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ScheduledSnapshotsConfigResponseComposerV1beta1(
      enabled: map['enabled'] as bool,
      snapshotCreationSchedule: map['snapshotCreationSchedule'] as String,
      snapshotLocation: map['snapshotLocation'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
