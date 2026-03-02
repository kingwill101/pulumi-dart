// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_recurrence.dart';

/// Scheduling configuration for a given alert processing rule.
class Schedule {
  /// Scheduling effective from time. Date-Time in ISO-8601 format without timezone suffix.
  final pulumi.Input<String>? effectiveFrom;
  /// Scheduling effective until time. Date-Time in ISO-8601 format without timezone suffix.
  final pulumi.Input<String>? effectiveUntil;
  /// List of recurrences.
  final pulumi.Input<List<DailyRecurrence>>? recurrences;
  /// Scheduling time zone.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [Schedule].
  /// [effectiveFrom] Scheduling effective from time. Date-Time in ISO-8601 format without timezone suffix.
  /// [effectiveUntil] Scheduling effective until time. Date-Time in ISO-8601 format without timezone suffix.
  /// [recurrences] List of recurrences.
  /// [timeZone] Scheduling time zone.
  Schedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.recurrences,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveFrom': ?effectiveFrom,
      'effectiveUntil': ?effectiveUntil,
      'recurrences': ?pulumi.Input.mapOptionalInputValue<List<DailyRecurrence>, List<Map<String, dynamic>>>(recurrences, (value) => pulumi.Input.encodeList<DailyRecurrence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      effectiveFrom: map['effectiveFrom'] == null ? null : (map['effectiveFrom']! as String).input(),
      effectiveUntil: map['effectiveUntil'] == null ? null : (map['effectiveUntil']! as String).input(),
      recurrences: map['recurrences'] == null ? null : (pulumi.Input.decodeList<DailyRecurrence>(map['recurrences']!, (value) => DailyRecurrence.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

