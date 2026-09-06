// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_policy_recurrence.dart';

/// CDC Policy.
class MapperPolicy {
  /// Mode of running the CDC: batch vs continuous.
  final pulumi.Input<String?>? mode;
  /// Defines the frequency and interval for running the CDC for batch mode.
  final pulumi.Input<MapperPolicyRecurrence?>? recurrence;

  /// Creates a new [MapperPolicy].
  /// [mode] Mode of running the CDC: batch vs continuous.
  /// [recurrence] Defines the frequency and interval for running the CDC for batch mode.
  const MapperPolicy({
    this.mode,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<MapperPolicyRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory MapperPolicy.fromMap(Map<String, dynamic> map) {
    return MapperPolicy(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperPolicyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
