// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_time_zone.dart';

/// Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.
class GoogleTypeDateTime {
  /// Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.
  final int? day;

  /// Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int? hours;

  /// Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
  final int? minutes;

  /// Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.
  final int? month;

  /// Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
  final int? nanos;

  /// Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.
  final int? seconds;

  /// Time zone.
  final GoogleTypeTimeZone? timeZone;

  /// UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.
  final String? utcOffset;

  /// Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  final int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue;
    }
    final hoursValue = hours;
    if (hoursValue != null) {
      map['hours'] = hoursValue;
    }
    final minutesValue = minutes;
    if (minutesValue != null) {
      map['minutes'] = minutesValue;
    }
    final monthValue = month;
    if (monthValue != null) {
      map['month'] = monthValue;
    }
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final secondsValue = seconds;
    if (secondsValue != null) {
      map['seconds'] = secondsValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue.toMap();
    }
    final utcOffsetValue = utcOffset;
    if (utcOffsetValue != null) {
      map['utcOffset'] = utcOffsetValue;
    }
    final yearValue = year;
    if (yearValue != null) {
      map['year'] = yearValue;
    }
    return map;
  }

  factory GoogleTypeDateTime.fromMap(Map<String, dynamic> map) {
    return GoogleTypeDateTime(
      day: map['day'] == null ? null : map['day'] as int,
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      month: map['month'] == null ? null : map['month'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
      timeZone: map['timeZone'] == null
          ? null
          : GoogleTypeTimeZone.fromMap(
              (map['timeZone'] as Map).cast<String, dynamic>()),
      utcOffset: map['utcOffset'] == null ? null : map['utcOffset'] as String,
      year: map['year'] == null ? null : map['year'] as int,
    );
  }
}
