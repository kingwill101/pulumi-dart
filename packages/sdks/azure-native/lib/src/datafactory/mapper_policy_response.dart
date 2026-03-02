// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_policy_recurrence_response.dart';

/// CDC Policy.
class MapperPolicyResponse {
  /// Mode of running the CDC: batch vs continuous.
  final pulumi.Input<String>? mode;
  /// Defines the frequency and interval for running the CDC for batch mode.
  final pulumi.Input<MapperPolicyRecurrenceResponse>? recurrence;

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
      'recurrence': ?pulumi.Input.mapOptionalInputValue<MapperPolicyRecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory MapperPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MapperPolicyResponse(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      recurrence: map['recurrence'] == null ? null : (MapperPolicyRecurrenceResponse.fromMap((map['recurrence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

