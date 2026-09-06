// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Broker Diagnostic Self check properties
class SelfCheck {
  /// The self check interval.
  final pulumi.Input<int?>? intervalSeconds;
  /// The toggle to enable/disable self check.
  final pulumi.Input<dynamic>? mode;
  /// The timeout for self check.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [SelfCheck].
  /// [intervalSeconds] The self check interval.
  /// [mode] The toggle to enable/disable self check.
  /// [timeoutSeconds] The timeout for self check.
  SelfCheck({
    pulumi.Input<int?>? intervalSeconds,
    pulumi.Input<dynamic>? mode,
    pulumi.Input<int?>? timeoutSeconds,
  }) : intervalSeconds = intervalSeconds ?? pulumi.Input.fromValue(30), mode = mode ?? pulumi.Input.fromValue('Enabled'), timeoutSeconds = timeoutSeconds ?? pulumi.Input.fromValue(15);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalSeconds': ?intervalSeconds,
      'mode': ?mode,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory SelfCheck.fromMap(Map<String, dynamic> map) {
    return SelfCheck(
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
