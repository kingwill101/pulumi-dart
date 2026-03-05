// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale configuration.
class ScaleConfiguration {
  /// The maximum count of sessions at the same time.
  final pulumi.Input<int>? maxConcurrentSessions;
  /// The minimum count of ready session instances.
  final pulumi.Input<int>? readySessionInstances;

  /// Creates a new [ScaleConfiguration].
  /// [maxConcurrentSessions] The maximum count of sessions at the same time.
  /// [readySessionInstances] The minimum count of ready session instances.
  ScaleConfiguration({
    this.maxConcurrentSessions,
    this.readySessionInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentSessions': ?maxConcurrentSessions,
      'readySessionInstances': ?readySessionInstances,
    };
  }

  factory ScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ScaleConfiguration(
      maxConcurrentSessions: (() { final guardedValue = map['maxConcurrentSessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readySessionInstances: (() { final guardedValue = map['readySessionInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

