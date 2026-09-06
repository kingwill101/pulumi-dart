// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BFD configuration properties
class BfdConfiguration {
  /// Interval in milliseconds. Example: 300.
  final pulumi.Input<int?>? intervalInMilliSeconds;
  /// Multiplier for the Bfd Configuration. Example: 5.
  final pulumi.Input<int?>? multiplier;

  /// Creates a new [BfdConfiguration].
  /// [intervalInMilliSeconds] Interval in milliseconds. Example: 300.
  /// [multiplier] Multiplier for the Bfd Configuration. Example: 5.
  BfdConfiguration({
    pulumi.Input<int?>? intervalInMilliSeconds,
    pulumi.Input<int?>? multiplier,
  }) : intervalInMilliSeconds = intervalInMilliSeconds ?? pulumi.Input.fromValue(300), multiplier = multiplier ?? pulumi.Input.fromValue(5);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInMilliSeconds': ?intervalInMilliSeconds,
      'multiplier': ?multiplier,
    };
  }

  factory BfdConfiguration.fromMap(Map<String, dynamic> map) {
    return BfdConfiguration(
      intervalInMilliSeconds: (() { final guardedValue = map['intervalInMilliSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      multiplier: (() { final guardedValue = map['multiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
