// ignore_for_file: unused_element, unnecessary_cast

import 'alert_processing_rule_suppression_schedule_recurrence.dart';

class AlertProcessingRuleSuppressionSchedule {
  /// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  final String? effectiveFrom;
  /// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  final String? effectiveUntil;
  /// A `recurrence` block as defined above.
  final AlertProcessingRuleSuppressionScheduleRecurrence? recurrence;
  /// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  final String? timeZone;

  /// Creates a new [AlertProcessingRuleSuppressionSchedule].
  /// [effectiveFrom] Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  /// [effectiveUntil] Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  /// [recurrence] A `recurrence` block as defined above.
  /// [timeZone] The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  AlertProcessingRuleSuppressionSchedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.recurrence,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveFrom': ?effectiveFrom,
      'effectiveUntil': ?effectiveUntil,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'timeZone': ?timeZone,
    };
  }

  factory AlertProcessingRuleSuppressionSchedule.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionSchedule(
      effectiveFrom: map['effectiveFrom'] == null ? null : map['effectiveFrom'] as String,
      effectiveUntil: map['effectiveUntil'] == null ? null : map['effectiveUntil'] as String,
      recurrence: map['recurrence'] == null ? null : AlertProcessingRuleSuppressionScheduleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

