// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Self tracing properties
class SelfTracingResponse {
  /// The self tracing interval.
  final pulumi.Input<int?>? intervalSeconds;
  /// The toggle to enable/disable self tracing.
  final pulumi.Input<String?>? mode;

  /// Creates a new [SelfTracingResponse].
  /// [intervalSeconds] The self tracing interval.
  /// [mode] The toggle to enable/disable self tracing.
  SelfTracingResponse({
    pulumi.Input<int?>? intervalSeconds,
    pulumi.Input<String?>? mode,
  }) : intervalSeconds = intervalSeconds ?? pulumi.Input.fromValue(30), mode = mode ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalSeconds': ?intervalSeconds,
      'mode': ?mode,
    };
  }

  factory SelfTracingResponse.fromMap(Map<String, dynamic> map) {
    return SelfTracingResponse(
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
