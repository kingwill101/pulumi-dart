// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstancesInstanceSettingMaintenanceWindow {
  /// Day of week (1-7), starting on Monday
  final int day;
  /// Hour of day (0-23), ignored if day not set
  final int hour;
  /// Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  final String updateTrack;

  /// Creates a new [GetDatabaseInstancesInstanceSettingMaintenanceWindow].
  /// [day] Day of week (1-7), starting on Monday
  /// [hour] Hour of day (0-23), ignored if day not set
  /// [updateTrack] Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  GetDatabaseInstancesInstanceSettingMaintenanceWindow({
    required this.day,
    required this.hour,
    required this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
      'updateTrack': updateTrack,
    };
  }

  factory GetDatabaseInstancesInstanceSettingMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingMaintenanceWindow(
      day: map['day'] as int,
      hour: map['hour'] as int,
      updateTrack: map['updateTrack'] as String,
    );
  }
}

