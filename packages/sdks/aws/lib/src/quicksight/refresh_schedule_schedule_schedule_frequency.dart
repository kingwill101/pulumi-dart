// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_schedule_schedule_frequency_refresh_on_day.dart';

class RefreshScheduleScheduleScheduleFrequency {
  /// The interval between scheduled refreshes. Valid values are `MINUTE15`, `MINUTE30`, `HOURLY`, `DAILY`, `WEEKLY` and `MONTHLY`.
  final pulumi.Input<String> interval;
  /// The [refresh on entity](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ScheduleRefreshOnEntity.html) configuration for weekly or monthly schedules. See refresh_on_day.
  final pulumi.Input<RefreshScheduleScheduleScheduleFrequencyRefreshOnDay>? refreshOnDay;
  /// The time of day that you want the dataset to refresh. This value is expressed in `HH:MM` format. This field is not required for schedules that refresh hourly.
  final pulumi.Input<String>? timeOfTheDay;
  /// The timezone that you want the refresh schedule to use.
  final pulumi.Input<String>? timezone;

  /// Creates a new [RefreshScheduleScheduleScheduleFrequency].
  /// [interval] The interval between scheduled refreshes. Valid values are `MINUTE15`, `MINUTE30`, `HOURLY`, `DAILY`, `WEEKLY` and `MONTHLY`.
  /// [refreshOnDay] The [refresh on entity](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ScheduleRefreshOnEntity.html) configuration for weekly or monthly schedules. See refresh_on_day.
  /// [timeOfTheDay] The time of day that you want the dataset to refresh. This value is expressed in `HH:MM` format. This field is not required for schedules that refresh hourly.
  /// [timezone] The timezone that you want the refresh schedule to use.
  const RefreshScheduleScheduleScheduleFrequency({
    required this.interval,
    this.refreshOnDay,
    this.timeOfTheDay,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'refreshOnDay': ?pulumi.Input.mapOptionalInputValue<RefreshScheduleScheduleScheduleFrequencyRefreshOnDay, Map<String, dynamic>>(refreshOnDay, (value) => value.toMap()),
      'timeOfTheDay': ?timeOfTheDay,
      'timezone': ?timezone,
    };
  }

  factory RefreshScheduleScheduleScheduleFrequency.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleScheduleScheduleFrequency(
      interval: pulumi.Input.fromValue(map['interval'] as String),
      refreshOnDay: (() { final guardedValue = map['refreshOnDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RefreshScheduleScheduleScheduleFrequencyRefreshOnDay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeOfTheDay: (() { final guardedValue = map['timeOfTheDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

