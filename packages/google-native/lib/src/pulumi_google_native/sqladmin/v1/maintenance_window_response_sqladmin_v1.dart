// ignore_for_file: unused_element, unnecessary_cast

/// Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
class MaintenanceWindowResponseSqladminV1 {
  /// day of week (1-7), starting on Monday.
  final int day;

  /// hour of day - 0 to 23.
  final int hour;

  /// This is always `sql#maintenanceWindow`.
  final String kind;

  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  final String updateTrack;

  MaintenanceWindowResponseSqladminV1({
    required this.day,
    required this.hour,
    required this.kind,
    required this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['hour'] = hour;
    map['kind'] = kind;
    map['updateTrack'] = updateTrack;
    return map;
  }

  factory MaintenanceWindowResponseSqladminV1.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowResponseSqladminV1(
      day: map['day'] as int,
      hour: map['hour'] as int,
      kind: map['kind'] as String,
      updateTrack: map['updateTrack'] as String,
    );
  }
}
