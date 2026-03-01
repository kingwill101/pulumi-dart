// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'week_of_month.dart';

/// Weekly retention format.
class WeeklyRetentionFormat {
  /// List of days of the week.
  final List<DayOfWeek>? daysOfTheWeek;
  /// List of weeks of month.
  final List<WeekOfMonth>? weeksOfTheMonth;

  /// Creates a new [WeeklyRetentionFormat].
  /// [daysOfTheWeek] List of days of the week.
  /// [weeksOfTheMonth] List of weeks of month.
  WeeklyRetentionFormat({
    this.daysOfTheWeek,
    this.weeksOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?daysOfTheWeek == null ? null : pulumi.Input.encodeList<DayOfWeek, String>(daysOfTheWeek!, (value) => value.value),
      'weeksOfTheMonth': ?weeksOfTheMonth == null ? null : pulumi.Input.encodeList<WeekOfMonth, String>(weeksOfTheMonth!, (value) => value.value),
    };
  }

  factory WeeklyRetentionFormat.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionFormat(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : pulumi.Input.decodeList<DayOfWeek>(map['daysOfTheWeek'], (value) => DayOfWeek.fromValue(value as String)),
      weeksOfTheMonth: map['weeksOfTheMonth'] == null ? null : pulumi.Input.decodeList<WeekOfMonth>(map['weeksOfTheMonth'], (value) => WeekOfMonth.fromValue(value as String)),
    );
  }
}

