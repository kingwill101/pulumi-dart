// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_schedule.dart';

/// Suppression logic for a given action rule
class SuppressionConfig {
  /// Specifies when the suppression should be applied
  final pulumi.Input<dynamic> recurrenceType;
  /// suppression schedule configuration
  final pulumi.Input<SuppressionSchedule?>? schedule;

  /// Creates a new [SuppressionConfig].
  /// [recurrenceType] Specifies when the suppression should be applied
  /// [schedule] suppression schedule configuration
  const SuppressionConfig({
    required this.recurrenceType,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrenceType': recurrenceType,
      'schedule': ?pulumi.Input.mapOptionalInputValue<SuppressionSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory SuppressionConfig.fromMap(Map<String, dynamic> map) {
    return SuppressionConfig(
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType']),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SuppressionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
