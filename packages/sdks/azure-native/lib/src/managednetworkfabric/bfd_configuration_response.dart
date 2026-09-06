// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BFD configuration properties
class BfdConfigurationResponse {
  /// Administrative state of the BfdConfiguration. Example: Enabled | Disabled.
  final pulumi.Input<String> administrativeState;
  /// Interval in milliseconds. Example: 300.
  final pulumi.Input<int?>? intervalInMilliSeconds;
  /// Multiplier for the Bfd Configuration. Example: 5.
  final pulumi.Input<int?>? multiplier;

  /// Creates a new [BfdConfigurationResponse].
  /// [administrativeState] Administrative state of the BfdConfiguration. Example: Enabled | Disabled.
  /// [intervalInMilliSeconds] Interval in milliseconds. Example: 300.
  /// [multiplier] Multiplier for the Bfd Configuration. Example: 5.
  BfdConfigurationResponse({
    pulumi.Input<String>? administrativeState,
    pulumi.Input<int?>? intervalInMilliSeconds,
    pulumi.Input<int?>? multiplier,
  }) : administrativeState = administrativeState ?? pulumi.Input.fromValue('Disabled'), intervalInMilliSeconds = intervalInMilliSeconds ?? pulumi.Input.fromValue(300), multiplier = multiplier ?? pulumi.Input.fromValue(5);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'intervalInMilliSeconds': ?intervalInMilliSeconds,
      'multiplier': ?multiplier,
    };
  }

  factory BfdConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BfdConfigurationResponse(
      administrativeState: pulumi.Input.fromValue(map['administrativeState'] as String),
      intervalInMilliSeconds: (() { final guardedValue = map['intervalInMilliSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      multiplier: (() { final guardedValue = map['multiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
