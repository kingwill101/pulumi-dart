// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RefreshScheduleScheduleScheduleFrequencyRefreshOnDay {
  /// The day of the month that you want to schedule refresh on.
  final pulumi.Input<String>? dayOfMonth;
  /// The day of the week that you want to schedule a refresh on. Valid values are `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY` and `SATURDAY`.
  final pulumi.Input<String>? dayOfWeek;

  /// Creates a new [RefreshScheduleScheduleScheduleFrequencyRefreshOnDay].
  /// [dayOfMonth] The day of the month that you want to schedule refresh on.
  /// [dayOfWeek] The day of the week that you want to schedule a refresh on. Valid values are `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY` and `SATURDAY`.
  RefreshScheduleScheduleScheduleFrequencyRefreshOnDay({
    this.dayOfMonth,
    this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'dayOfWeek': ?dayOfWeek,
    };
  }

  factory RefreshScheduleScheduleScheduleFrequencyRefreshOnDay.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleScheduleScheduleFrequencyRefreshOnDay(
      dayOfMonth: map['dayOfMonth'] == null ? null : ((map['dayOfMonth'] as String).input()).input(),
      dayOfWeek: map['dayOfWeek'] == null ? null : ((map['dayOfWeek'] as String).input()).input(),
    );
  }
}

