// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_schedule_response.dart';

/// Suppression logic for a given action rule
class SuppressionConfigResponse {
  /// Specifies when the suppression should be applied
  final pulumi.Input<String> recurrenceType;
  /// suppression schedule configuration
  final pulumi.Input<SuppressionScheduleResponse>? schedule;

  /// Creates a new [SuppressionConfigResponse].
  /// [recurrenceType] Specifies when the suppression should be applied
  /// [schedule] suppression schedule configuration
  const SuppressionConfigResponse({
    required this.recurrenceType,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrenceType': recurrenceType,
      'schedule': ?pulumi.Input.mapOptionalInputValue<SuppressionScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory SuppressionConfigResponse.fromMap(Map<String, dynamic> map) {
    return SuppressionConfigResponse(
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SuppressionScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

