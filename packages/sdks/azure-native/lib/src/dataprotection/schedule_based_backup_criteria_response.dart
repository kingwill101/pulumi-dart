// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_response.dart';

/// Schedule based backup criteria
class ScheduleBasedBackupCriteriaResponse {
  /// it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// and should be part of AbsoluteMarker enum
  final pulumi.Input<List<String>>? absoluteCriteria;
  /// This is day of the month from 1 to 28 other wise last of month
  final pulumi.Input<List<DayResponse>>? daysOfMonth;
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

  /// Creates a new [ScheduleBasedBackupCriteriaResponse].
  /// [absoluteCriteria] it contains absolute values like "AllBackup" / "FirstOfDay" / "FirstOfWeek" / "FirstOfMonth"
  /// [daysOfMonth] This is day of the month from 1 to 28 other wise last of month
  /// [daysOfTheWeek] It should be Sunday/Monday/T..../Saturday
  /// [monthsOfYear] It should be January/February/....../December
  /// [objectType] Type of the specific object - used for deserializing
  /// [scheduleTimes] List of schedule times for backup
  /// [weeksOfTheMonth] It should be First/Second/Third/Fourth/Last
  const ScheduleBasedBackupCriteriaResponse({
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
      'daysOfMonth': ?pulumi.Input.mapOptionalInputValue<List<DayResponse>, List<Map<String, dynamic>>>(daysOfMonth, (value) => pulumi.Input.encodeList<DayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'daysOfTheWeek': ?daysOfTheWeek,
      'monthsOfYear': ?monthsOfYear,
      'objectType': objectType,
      'scheduleTimes': ?scheduleTimes,
      'weeksOfTheMonth': ?weeksOfTheMonth,
    };
  }

  factory ScheduleBasedBackupCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleBasedBackupCriteriaResponse(
      absoluteCriteria: (() { final guardedValue = map['absoluteCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      daysOfMonth: (() { final guardedValue = map['daysOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DayResponse>(guardedValue, (value) => DayResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      daysOfTheWeek: (() { final guardedValue = map['daysOfTheWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      monthsOfYear: (() { final guardedValue = map['monthsOfYear']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      scheduleTimes: (() { final guardedValue = map['scheduleTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeksOfTheMonth: (() { final guardedValue = map['weeksOfTheMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

