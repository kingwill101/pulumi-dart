// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule_monthly_occurrence.dart';

/// The properties of the create Advanced Schedule.
class AdvancedSchedule {
  /// Days of the month that the job should execute on. Must be between 1 and 31.
  final pulumi.Input<List<int>?>? monthDays;
  /// Occurrences of days within a month.
  final pulumi.Input<List<AdvancedScheduleMonthlyOccurrence>?>? monthlyOccurrences;
  /// Days of the week that the job should execute on.
  final pulumi.Input<List<String>?>? weekDays;

  /// Creates a new [AdvancedSchedule].
  /// [monthDays] Days of the month that the job should execute on. Must be between 1 and 31.
  /// [monthlyOccurrences] Occurrences of days within a month.
  /// [weekDays] Days of the week that the job should execute on.
  const AdvancedSchedule({
    this.monthDays,
    this.monthlyOccurrences,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthDays': ?monthDays,
      'monthlyOccurrences': ?pulumi.Input.mapOptionalInputValue<List<AdvancedScheduleMonthlyOccurrence>, List<Map<String, dynamic>>>(monthlyOccurrences, (value) => pulumi.Input.encodeList<AdvancedScheduleMonthlyOccurrence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?weekDays,
    };
  }

  factory AdvancedSchedule.fromMap(Map<String, dynamic> map) {
    return AdvancedSchedule(
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthlyOccurrences: (() { final guardedValue = map['monthlyOccurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdvancedScheduleMonthlyOccurrence>(guardedValue, (value) => AdvancedScheduleMonthlyOccurrence.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
