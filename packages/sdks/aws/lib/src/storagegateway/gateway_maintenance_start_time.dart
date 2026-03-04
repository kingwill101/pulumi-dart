// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayMaintenanceStartTime {
  /// The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
  final pulumi.Input<String>? dayOfMonth;

  /// The day of the week component of the maintenance start time week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.
  final pulumi.Input<String>? dayOfWeek;

  /// The hour component of the maintenance start time represented as _hh_, where _hh_ is the hour (00 to 23). The hour of the day is in the time zone of the gateway.
  final pulumi.Input<int> hourOfDay;

  /// The minute component of the maintenance start time represented as _mm_, where _mm_ is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.
  final pulumi.Input<int>? minuteOfHour;

  /// Creates a new [GatewayMaintenanceStartTime].
  /// [dayOfMonth] The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
  /// [dayOfWeek] The day of the week component of the maintenance start time week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.
  /// [hourOfDay] The hour component of the maintenance start time represented as _hh_, where _hh_ is the hour (00 to 23). The hour of the day is in the time zone of the gateway.
  /// [minuteOfHour] The minute component of the maintenance start time represented as _mm_, where _mm_ is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.
  GatewayMaintenanceStartTime({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.hourOfDay,
    this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'dayOfWeek': ?dayOfWeek,
      'hourOfDay': hourOfDay,
      'minuteOfHour': ?minuteOfHour,
    };
  }

  factory GatewayMaintenanceStartTime.fromMap(Map<String, dynamic> map) {
    return GatewayMaintenanceStartTime(
      dayOfMonth: (() {
        final guardedValue = map['dayOfMonth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dayOfWeek: (() {
        final guardedValue = map['dayOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      minuteOfHour: (() {
        final guardedValue = map['minuteOfHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
