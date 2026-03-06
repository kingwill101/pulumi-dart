// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Self tracing properties
class SelfTracingResponse {
  /// The self tracing interval.
  final pulumi.Input<int>? intervalSeconds;
  /// The toggle to enable/disable self tracing.
  final pulumi.Input<String>? mode;

  /// Creates a new [SelfTracingResponse].
  /// [intervalSeconds] The self tracing interval.
  /// [mode] The toggle to enable/disable self tracing.
  const SelfTracingResponse({
    this.intervalSeconds,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalSeconds': ?intervalSeconds,
      'mode': ?mode,
    };
  }

  factory SelfTracingResponse.fromMap(Map<String, dynamic> map) {
    return SelfTracingResponse(
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

