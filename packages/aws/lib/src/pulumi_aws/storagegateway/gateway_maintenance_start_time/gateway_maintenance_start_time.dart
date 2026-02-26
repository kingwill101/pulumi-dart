// ignore_for_file: unused_element, unnecessary_cast

class GatewayMaintenanceStartTime {
  /// The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
  final String? dayOfMonth;

  /// The day of the week component of the maintenance start time week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.
  final String? dayOfWeek;

  /// The hour component of the maintenance start time represented as _hh_, where _hh_ is the hour (00 to 23). The hour of the day is in the time zone of the gateway.
  final int hourOfDay;

  /// The minute component of the maintenance start time represented as _mm_, where _mm_ is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.
  final int? minuteOfHour;

  GatewayMaintenanceStartTime({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.hourOfDay,
    this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfMonthValue = dayOfMonth;
    if (dayOfMonthValue != null) {
      map['dayOfMonth'] = dayOfMonthValue;
    }
    final dayOfWeekValue = dayOfWeek;
    if (dayOfWeekValue != null) {
      map['dayOfWeek'] = dayOfWeekValue;
    }
    map['hourOfDay'] = hourOfDay;
    final minuteOfHourValue = minuteOfHour;
    if (minuteOfHourValue != null) {
      map['minuteOfHour'] = minuteOfHourValue;
    }
    return map;
  }

  factory GatewayMaintenanceStartTime.fromMap(Map<String, dynamic> map) {
    return GatewayMaintenanceStartTime(
      dayOfMonth:
          map['dayOfMonth'] == null ? null : map['dayOfMonth'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour:
          map['minuteOfHour'] == null ? null : map['minuteOfHour'] as int,
    );
  }
}
