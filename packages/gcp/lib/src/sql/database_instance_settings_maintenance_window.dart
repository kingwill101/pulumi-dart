// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsMaintenanceWindow {
  /// Day of week (`1-7`), starting on Monday
  final int? day;

  /// Hour of day (`0-23`), ignored if `day` not set
  final int? hour;

  /// Receive updates after one week (`canary`) or after two weeks (`stable`) or after five weeks (`week5`) of notification.
  final String? updateTrack;

  /// Creates a new [DatabaseInstanceSettingsMaintenanceWindow].
  /// [day] Day of week (`1-7`), starting on Monday
  /// [hour] Hour of day (`0-23`), ignored if `day` not set
  /// [updateTrack] Receive updates after one week (`canary`) or after two weeks (`stable`) or after five weeks (`week5`) of notification.
  DatabaseInstanceSettingsMaintenanceWindow({
    this.day,
    this.hour,
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
    final updateTrackValue = updateTrack;
    if (updateTrackValue != null) {
      map['updateTrack'] = updateTrackValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsMaintenanceWindow(
      day: map['day'] == null ? null : map['day'] as int,
      hour: map['hour'] == null ? null : map['hour'] as int,
      updateTrack:
          map['updateTrack'] == null ? null : map['updateTrack'] as String,
    );
  }
}
