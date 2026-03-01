// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_response.dart';

/// Schedule based backup criteria
class ScheduleBasedBackupCriteriaResponse {
  /// it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// and should be part of AbsoluteMarker enum
  final List<String>? absoluteCriteria;
  /// This is day of the month from 1 to 28 other wise last of month
  final List<DayResponse>? daysOfMonth;
  /// It should be Sunday/Monday/T..../Saturday
  final List<String>? daysOfTheWeek;
  /// It should be January/February/....../December
  final List<String>? monthsOfYear;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ScheduleBasedBackupCriteria'.
  final String objectType;
  /// List of schedule times for backup
  final List<String>? scheduleTimes;
  /// It should be First/Second/Third/Fourth/Last
  final List<String>? weeksOfTheMonth;

  /// Creates a new [ScheduleBasedBackupCriteriaResponse].
  /// [absoluteCriteria] it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// [daysOfMonth] This is day of the month from 1 to 28 other wise last of month
  /// [daysOfTheWeek] It should be Sunday/Monday/T..../Saturday
  /// [monthsOfYear] It should be January/February/....../December
  /// [objectType] Type of the specific object - used for deserializing
  /// [scheduleTimes] List of schedule times for backup
  /// [weeksOfTheMonth] It should be First/Second/Third/Fourth/Last
  ScheduleBasedBackupCriteriaResponse({
    this.absoluteCriteria,
    this.daysOfMonth,
    this.daysOfTheWeek,
    this.monthsOfYear,
    required this.objectType,
    this.scheduleTimes,
    this.weeksOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
      'daysOfMonth': ?daysOfMonth == null ? null : pulumi.Input.encodeList<DayResponse, Map<String, dynamic>>(daysOfMonth!, (value) => value.toMap()),
      'daysOfTheWeek': ?daysOfTheWeek,
      'monthsOfYear': ?monthsOfYear,
      'objectType': objectType,
      'scheduleTimes': ?scheduleTimes,
      'weeksOfTheMonth': ?weeksOfTheMonth,
    };
  }

  factory ScheduleBasedBackupCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleBasedBackupCriteriaResponse(
      absoluteCriteria: map['absoluteCriteria'] == null ? null : (map['absoluteCriteria'] as List).cast<String>(),
      daysOfMonth: map['daysOfMonth'] == null ? null : pulumi.Input.decodeList<DayResponse>(map['daysOfMonth'], (value) => DayResponse.fromMap((value as Map).cast<String, dynamic>())),
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : (map['daysOfTheWeek'] as List).cast<String>(),
      monthsOfYear: map['monthsOfYear'] == null ? null : (map['monthsOfYear'] as List).cast<String>(),
      objectType: map['objectType'] as String,
      scheduleTimes: map['scheduleTimes'] == null ? null : (map['scheduleTimes'] as List).cast<String>(),
      weeksOfTheMonth: map['weeksOfTheMonth'] == null ? null : (map['weeksOfTheMonth'] as List).cast<String>(),
    );
  }
}

