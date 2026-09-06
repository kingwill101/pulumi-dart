// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Broker Diagnostic Self check properties
class SelfCheckResponse {
  /// The self check interval.
  final pulumi.Input<int?>? intervalSeconds;
  /// The toggle to enable/disable self check.
  final pulumi.Input<String?>? mode;
  /// The timeout for self check.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [SelfCheckResponse].
  /// [intervalSeconds] The self check interval.
  /// [mode] The toggle to enable/disable self check.
  /// [timeoutSeconds] The timeout for self check.
  SelfCheckResponse({
    pulumi.Input<int?>? intervalSeconds,
    pulumi.Input<String?>? mode,
    pulumi.Input<int?>? timeoutSeconds,
  }) : intervalSeconds = intervalSeconds ?? pulumi.Input.fromValue(30), mode = mode ?? pulumi.Input.fromValue('Enabled'), timeoutSeconds = timeoutSeconds ?? pulumi.Input.fromValue(15);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalSeconds': ?intervalSeconds,
      'mode': ?mode,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory SelfCheckResponse.fromMap(Map<String, dynamic> map) {
    return SelfCheckResponse(
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
