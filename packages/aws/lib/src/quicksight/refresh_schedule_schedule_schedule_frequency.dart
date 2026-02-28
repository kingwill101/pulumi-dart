// ignore_for_file: unused_element, unnecessary_cast

import 'refresh_schedule_schedule_schedule_frequency_refresh_on_day.dart';

class RefreshScheduleScheduleScheduleFrequency {
  /// The interval between scheduled refreshes. Valid values are `MINUTE15`, `MINUTE30`, `HOURLY`, `DAILY`, `WEEKLY` and `MONTHLY`.
  final String interval;

  /// The [refresh on entity](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ScheduleRefreshOnEntity.html) configuration for weekly or monthly schedules. See refresh_on_day.
  final RefreshScheduleScheduleScheduleFrequencyRefreshOnDay? refreshOnDay;

  /// The time of day that you want the dataset to refresh. This value is expressed in `HH:MM` format. This field is not required for schedules that refresh hourly.
  final String? timeOfTheDay;

  /// The timezone that you want the refresh schedule to use.
  final String? timezone;

  /// Creates a new [RefreshScheduleScheduleScheduleFrequency].
  /// [interval] The interval between scheduled refreshes. Valid values are `MINUTE15`, `MINUTE30`, `HOURLY`, `DAILY`, `WEEKLY` and `MONTHLY`.
  /// [refreshOnDay] The [refresh on entity](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ScheduleRefreshOnEntity.html) configuration for weekly or monthly schedules. See refresh_on_day.
  /// [timeOfTheDay] The time of day that you want the dataset to refresh. This value is expressed in `HH:MM` format. This field is not required for schedules that refresh hourly.
  /// [timezone] The timezone that you want the refresh schedule to use.
  RefreshScheduleScheduleScheduleFrequency({
    required this.interval,
    this.refreshOnDay,
    this.timeOfTheDay,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interval'] = interval;
    final refreshOnDayValue = refreshOnDay;
    if (refreshOnDayValue != null) {
      map['refreshOnDay'] = refreshOnDayValue.toMap();
    }
    final timeOfTheDayValue = timeOfTheDay;
    if (timeOfTheDayValue != null) {
      map['timeOfTheDay'] = timeOfTheDayValue;
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    return map;
  }

  factory RefreshScheduleScheduleScheduleFrequency.fromMap(
      Map<String, dynamic> map) {
    return RefreshScheduleScheduleScheduleFrequency(
      interval: map['interval'] as String,
      refreshOnDay: map['refreshOnDay'] == null
          ? null
          : RefreshScheduleScheduleScheduleFrequencyRefreshOnDay.fromMap(
              (map['refreshOnDay'] as Map).cast<String, dynamic>()),
      timeOfTheDay:
          map['timeOfTheDay'] == null ? null : map['timeOfTheDay'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}
