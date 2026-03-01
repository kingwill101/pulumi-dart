// ignore_for_file: unused_element, unnecessary_cast


/// Start time of a 30-minute weekly maintenance window.
class AmlFilesystemResponseMaintenanceWindow {
  /// Day of the week on which the maintenance window will occur.
  final String? dayOfWeek;
  /// The time of day (in UTC) to start the maintenance window.
  final String? timeOfDayUTC;

  /// Creates a new [AmlFilesystemResponseMaintenanceWindow].
  /// [dayOfWeek] Day of the week on which the maintenance window will occur.
  /// [timeOfDayUTC] The time of day (in UTC) to start the maintenance window.
  AmlFilesystemResponseMaintenanceWindow({
    this.dayOfWeek,
    this.timeOfDayUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'timeOfDayUTC': ?timeOfDayUTC,
    };
  }

  factory AmlFilesystemResponseMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemResponseMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      timeOfDayUTC: map['timeOfDayUTC'] == null ? null : map['timeOfDayUTC'] as String,
    );
  }
}

