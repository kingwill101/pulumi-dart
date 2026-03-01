// ignore_for_file: unused_element, unnecessary_cast

import 'suppression_schedule.dart';

/// Suppression logic for a given action rule
class SuppressionConfig {
  /// Specifies when the suppression should be applied
  final String recurrenceType;
  /// suppression schedule configuration
  final SuppressionSchedule? schedule;

  /// Creates a new [SuppressionConfig].
  /// [recurrenceType] Specifies when the suppression should be applied
  /// [schedule] suppression schedule configuration
  SuppressionConfig({
    required this.recurrenceType,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrenceType': recurrenceType,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory SuppressionConfig.fromMap(Map<String, dynamic> map) {
    return SuppressionConfig(
      recurrenceType: map['recurrenceType'] as String,
      schedule: map['schedule'] == null ? null : SuppressionSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

