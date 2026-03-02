// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// Maintenance window starting hour and day of week.
class MaintenanceWindowProperties {
  /// Day of the week.
  final pulumi.Input<DayOfWeek>? dayOfWeek;
  /// The update start hour of the day. (0 - 23)
  final pulumi.Input<int>? hour;

  /// Creates a new [MaintenanceWindowProperties].
  /// [dayOfWeek] Day of the week.
  /// [hour] The update start hour of the day. (0 - 23)
  MaintenanceWindowProperties({
    this.dayOfWeek,
    this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<DayOfWeek, String>(dayOfWeek, (value) => value.value),
      'hour': ?hour,
    };
  }

  factory MaintenanceWindowProperties.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowProperties(
      dayOfWeek: map['dayOfWeek'] == null ? null : (DayOfWeek.fromValue(map['dayOfWeek'] as String)).input(),
      hour: map['hour'] == null ? null : (map['hour'] as int).input(),
    );
  }
}

