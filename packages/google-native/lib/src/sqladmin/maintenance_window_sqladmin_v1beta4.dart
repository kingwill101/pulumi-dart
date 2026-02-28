// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_update_track_sqladmin_v1beta4.dart';

/// Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
class MaintenanceWindowSqladminV1beta4 {
  /// day of week (1-7), starting on Monday.
  final int? day;

  /// hour of day - 0 to 23.
  final int? hour;

  /// This is always `sql#maintenanceWindow`.
  final String? kind;

  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  final MaintenanceWindowUpdateTrackSqladminV1beta4? updateTrack;

  /// Creates a new [MaintenanceWindowSqladminV1beta4].
  /// [day] day of week (1-7), starting on Monday.
  /// [hour] hour of day - 0 to 23.
  /// [kind] This is always `sql#maintenanceWindow`.
  /// [updateTrack] Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  MaintenanceWindowSqladminV1beta4({
    this.day,
    this.hour,
    this.kind,
    this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue;
    }
    final hourValue = hour;
    if (hourValue != null) {
      map['hour'] = hourValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final updateTrackValue = updateTrack;
    if (updateTrackValue != null) {
      map['updateTrack'] = updateTrackValue.value;
    }
    return map;
  }

  factory MaintenanceWindowSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowSqladminV1beta4(
      day: map['day'] == null ? null : map['day'] as int,
      hour: map['hour'] == null ? null : map['hour'] as int,
      kind: map['kind'] == null ? null : map['kind'] as String,
      updateTrack: map['updateTrack'] == null
          ? null
          : MaintenanceWindowUpdateTrackSqladminV1beta4.fromValue(
              map['updateTrack'] as String),
    );
  }
}
