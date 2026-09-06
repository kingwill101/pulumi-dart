// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale configuration.
class ScaleConfigurationResponse {
  /// The maximum count of sessions at the same time.
  final pulumi.Input<int?>? maxConcurrentSessions;
  /// The minimum count of ready session instances.
  final pulumi.Input<int?>? readySessionInstances;

  /// Creates a new [ScaleConfigurationResponse].
  /// [maxConcurrentSessions] The maximum count of sessions at the same time.
  /// [readySessionInstances] The minimum count of ready session instances.
  const ScaleConfigurationResponse({
    this.maxConcurrentSessions,
    this.readySessionInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentSessions': ?maxConcurrentSessions,
      'readySessionInstances': ?readySessionInstances,
    };
  }

  factory ScaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ScaleConfigurationResponse(
      maxConcurrentSessions: (() { final guardedValue = map['maxConcurrentSessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      readySessionInstances: (() { final guardedValue = map['readySessionInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
