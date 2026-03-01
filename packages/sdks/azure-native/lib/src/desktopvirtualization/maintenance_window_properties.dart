// ignore_for_file: unused_element, unnecessary_cast

import 'day_of_week.dart';

/// Maintenance window starting hour and day of week.
class MaintenanceWindowProperties {
  /// Day of the week.
  final DayOfWeek? dayOfWeek;
  /// The update start hour of the day. (0 - 23)
  final int? hour;

  /// Creates a new [MaintenanceWindowProperties].
  /// [dayOfWeek] Day of the week.
  /// [hour] The update start hour of the day. (0 - 23)
  MaintenanceWindowProperties({
    this.dayOfWeek,
    this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek == null ? null : dayOfWeek!.value,
      'hour': ?hour,
    };
  }

  factory MaintenanceWindowProperties.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowProperties(
      dayOfWeek: map['dayOfWeek'] == null ? null : DayOfWeek.fromValue(map['dayOfWeek'] as String),
      hour: map['hour'] == null ? null : map['hour'] as int,
    );
  }
}

