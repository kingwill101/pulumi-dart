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
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : (map['maxConcurrentSessions']! as int).input(),
      readySessionInstances: map['readySessionInstances'] == null ? null : (map['readySessionInstances']! as int).input(),
    );
  }
}

