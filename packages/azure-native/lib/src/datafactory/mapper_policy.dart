// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_policy_recurrence.dart';

/// CDC Policy.
class MapperPolicy {
  /// Mode of running the CDC: batch vs continuous.
  final String? mode;
  /// Defines the frequency and interval for running the CDC for batch mode.
  final MapperPolicyRecurrence? recurrence;

  /// Creates a new [MapperPolicy].
  /// [mode] Mode of running the CDC: batch vs continuous.
  /// [recurrence] Defines the frequency and interval for running the CDC for batch mode.
  MapperPolicy({
    this.mode,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory MapperPolicy.fromMap(Map<String, dynamic> map) {
    return MapperPolicy(
      mode: map['mode'] == null ? null : map['mode'] as String,
      recurrence: map['recurrence'] == null ? null : MapperPolicyRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

