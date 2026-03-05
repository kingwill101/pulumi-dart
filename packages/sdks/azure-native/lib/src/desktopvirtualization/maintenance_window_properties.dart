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
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<DayOfWeek, String>(dayOfWeek, (value) => value.wireValue),
      'hour': ?hour,
    };
  }

  factory MaintenanceWindowProperties.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowProperties(
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DayOfWeek.fromValue(guardedValue as String)); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

