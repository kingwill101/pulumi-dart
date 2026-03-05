// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BFD configuration properties
class BfdConfiguration {
  /// Interval in milliseconds. Example: 300.
  final pulumi.Input<int>? intervalInMilliSeconds;
  /// Multiplier for the Bfd Configuration. Example: 5.
  final pulumi.Input<int>? multiplier;

  /// Creates a new [BfdConfiguration].
  /// [intervalInMilliSeconds] Interval in milliseconds. Example: 300.
  /// [multiplier] Multiplier for the Bfd Configuration. Example: 5.
  BfdConfiguration({
    this.intervalInMilliSeconds,
    this.multiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInMilliSeconds': ?intervalInMilliSeconds,
      'multiplier': ?multiplier,
    };
  }

  factory BfdConfiguration.fromMap(Map<String, dynamic> map) {
    return BfdConfiguration(
      intervalInMilliSeconds: (() { final guardedValue = map['intervalInMilliSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      multiplier: (() { final guardedValue = map['multiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

