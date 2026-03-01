// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule_monthly_occurrence_response.dart';

/// The properties of the create Advanced Schedule.
class AdvancedScheduleResponse {
  /// Days of the month that the job should execute on. Must be between 1 and 31.
  final List<int>? monthDays;
  /// Occurrences of days within a month.
  final List<AdvancedScheduleMonthlyOccurrenceResponse>? monthlyOccurrences;
  /// Days of the week that the job should execute on.
  final List<String>? weekDays;

  /// Creates a new [AdvancedScheduleResponse].
  /// [monthDays] Days of the month that the job should execute on. Must be between 1 and 31.
  /// [monthlyOccurrences] Occurrences of days within a month.
  /// [weekDays] Days of the week that the job should execute on.
  AdvancedScheduleResponse({
    this.monthDays,
    this.monthlyOccurrences,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthDays': ?monthDays,
      'monthlyOccurrences': ?monthlyOccurrences == null ? null : pulumi.Input.encodeList<AdvancedScheduleMonthlyOccurrenceResponse, Map<String, dynamic>>(monthlyOccurrences!, (value) => value.toMap()),
      'weekDays': ?weekDays,
    };
  }

  factory AdvancedScheduleResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedScheduleResponse(
      monthDays: map['monthDays'] == null ? null : (map['monthDays'] as List).cast<int>(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : pulumi.Input.decodeList<AdvancedScheduleMonthlyOccurrenceResponse>(map['monthlyOccurrences'], (value) => AdvancedScheduleMonthlyOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      weekDays: map['weekDays'] == null ? null : (map['weekDays'] as List).cast<String>(),
    );
  }
}

