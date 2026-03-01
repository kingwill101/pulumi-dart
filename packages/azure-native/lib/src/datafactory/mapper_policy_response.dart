// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_policy_recurrence_response.dart';

/// CDC Policy.
class MapperPolicyResponse {
  /// Mode of running the CDC: batch vs continuous.
  final String? mode;
  /// Defines the frequency and interval for running the CDC for batch mode.
  final MapperPolicyRecurrenceResponse? recurrence;

  /// Creates a new [MapperPolicyResponse].
  /// [mode] Mode of running the CDC: batch vs continuous.
  /// [recurrence] Defines the frequency and interval for running the CDC for batch mode.
  MapperPolicyResponse({
    this.mode,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory MapperPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MapperPolicyResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      recurrence: map['recurrence'] == null ? null : MapperPolicyRecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

