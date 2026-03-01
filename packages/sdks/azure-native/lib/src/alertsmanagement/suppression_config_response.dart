// ignore_for_file: unused_element, unnecessary_cast

import 'suppression_schedule_response.dart';

/// Suppression logic for a given action rule
class SuppressionConfigResponse {
  /// Specifies when the suppression should be applied
  final String recurrenceType;
  /// suppression schedule configuration
  final SuppressionScheduleResponse? schedule;

  /// Creates a new [SuppressionConfigResponse].
  /// [recurrenceType] Specifies when the suppression should be applied
  /// [schedule] suppression schedule configuration
  SuppressionConfigResponse({
    required this.recurrenceType,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrenceType': recurrenceType,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory SuppressionConfigResponse.fromMap(Map<String, dynamic> map) {
    return SuppressionConfigResponse(
      recurrenceType: map['recurrenceType'] as String,
      schedule: map['schedule'] == null ? null : SuppressionScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

