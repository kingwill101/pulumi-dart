// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerMaintenanceWindow {
  /// The day of week for maintenance window. Defaults to `0`.
  final int? dayOfWeek;
  /// The start hour for maintenance window. Defaults to `0`.
  final int? startHour;
  /// The start minute for maintenance window. Defaults to `0`.
  final int? startMinute;

  /// Creates a new [FlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week for maintenance window. Defaults to `0`.
  /// [startHour] The start hour for maintenance window. Defaults to `0`.
  /// [startMinute] The start minute for maintenance window. Defaults to `0`.
  FlexibleServerMaintenanceWindow({
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startHour': ?startHour,
      'startMinute': ?startMinute,
    };
  }

  factory FlexibleServerMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return FlexibleServerMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      startMinute: map['startMinute'] == null ? null : map['startMinute'] as int,
    );
  }
}

