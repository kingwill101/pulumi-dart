// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_recurrence_response.dart';

/// Scheduling configuration for a given alert processing rule.
class ScheduleResponse {
  /// Scheduling effective from time. Date-Time in ISO-8601 format without timezone suffix.
  final String? effectiveFrom;
  /// Scheduling effective until time. Date-Time in ISO-8601 format without timezone suffix.
  final String? effectiveUntil;
  /// List of recurrences.
  final List<DailyRecurrenceResponse>? recurrences;
  /// Scheduling time zone.
  final String? timeZone;

  /// Creates a new [ScheduleResponse].
  /// [effectiveFrom] Scheduling effective from time. Date-Time in ISO-8601 format without timezone suffix.
  /// [effectiveUntil] Scheduling effective until time. Date-Time in ISO-8601 format without timezone suffix.
  /// [recurrences] List of recurrences.
  /// [timeZone] Scheduling time zone.
  ScheduleResponse({
    this.effectiveFrom,
    this.effectiveUntil,
    this.recurrences,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveFrom': ?effectiveFrom,
      'effectiveUntil': ?effectiveUntil,
      'recurrences': ?recurrences == null ? null : pulumi.Input.encodeList<DailyRecurrenceResponse, Map<String, dynamic>>(recurrences!, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      effectiveFrom: map['effectiveFrom'] == null ? null : map['effectiveFrom'] as String,
      effectiveUntil: map['effectiveUntil'] == null ? null : map['effectiveUntil'] as String,
      recurrences: map['recurrences'] == null ? null : pulumi.Input.decodeList<DailyRecurrenceResponse>(map['recurrences'], (value) => DailyRecurrenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

