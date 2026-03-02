// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day.dart';

/// Schedule based backup criteria
class ScheduleBasedBackupCriteria {
  /// it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// and should be part of AbsoluteMarker enum
  final pulumi.Input<List<String>>? absoluteCriteria;
  /// This is day of the month from 1 to 28 other wise last of month
  final pulumi.Input<List<Day>>? daysOfMonth;
  /// It should be Sunday/Monday/T..../Saturday
  final pulumi.Input<List<String>>? daysOfTheWeek;
  /// It should be January/February/....../December
  final pulumi.Input<List<String>>? monthsOfYear;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ScheduleBasedBackupCriteria'.
  final pulumi.Input<String> objectType;
  /// List of schedule times for backup
  final pulumi.Input<List<String>>? scheduleTimes;
  /// It should be First/Second/Third/Fourth/Last
  final pulumi.Input<List<String>>? weeksOfTheMonth;

  /// Creates a new [ScheduleBasedBackupCriteria].
  /// [absoluteCriteria] it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// [daysOfMonth] This is day of the month from 1 to 28 other wise last of month
  /// [daysOfTheWeek] It should be Sunday/Monday/T..../Saturday
  /// [monthsOfYear] It should be January/February/....../December
  /// [objectType] Type of the specific object - used for deserializing
  /// [scheduleTimes] List of schedule times for backup
  /// [weeksOfTheMonth] It should be First/Second/Third/Fourth/Last
  ScheduleBasedBackupCriteria({
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
      'daysOfMonth': ?pulumi.Input.mapOptionalInputValue<List<Day>, List<Map<String, dynamic>>>(daysOfMonth, (value) => pulumi.Input.encodeList<Day, Map<String, dynamic>>(value, (value) => value.toMap())),
      'daysOfTheWeek': ?daysOfTheWeek,
      'monthsOfYear': ?monthsOfYear,
      'objectType': objectType,
      'scheduleTimes': ?scheduleTimes,
      'weeksOfTheMonth': ?weeksOfTheMonth,
    };
  }

  factory ScheduleBasedBackupCriteria.fromMap(Map<String, dynamic> map) {
    return ScheduleBasedBackupCriteria(
      absoluteCriteria: map['absoluteCriteria'] == null ? null : ((map['absoluteCriteria'] as List).cast<String>()).input(),
      daysOfMonth: map['daysOfMonth'] == null ? null : (pulumi.Input.decodeList<Day>(map['daysOfMonth'], (value) => Day.fromMap((value as Map).cast<String, dynamic>()))).input(),
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : ((map['daysOfTheWeek'] as List).cast<String>()).input(),
      monthsOfYear: map['monthsOfYear'] == null ? null : ((map['monthsOfYear'] as List).cast<String>()).input(),
      objectType: (map['objectType'] as String).input(),
      scheduleTimes: map['scheduleTimes'] == null ? null : ((map['scheduleTimes'] as List).cast<String>()).input(),
      weeksOfTheMonth: map['weeksOfTheMonth'] == null ? null : ((map['weeksOfTheMonth'] as List).cast<String>()).input(),
    );
  }
}

