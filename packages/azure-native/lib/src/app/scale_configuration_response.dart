// ignore_for_file: unused_element, unnecessary_cast


/// Scale configuration.
class ScaleConfigurationResponse {
  /// The maximum count of sessions at the same time.
  final int? maxConcurrentSessions;
  /// The minimum count of ready session instances.
  final int? readySessionInstances;

  /// Creates a new [ScaleConfigurationResponse].
  /// [maxConcurrentSessions] The maximum count of sessions at the same time.
  /// [readySessionInstances] The minimum count of ready session instances.
  ScaleConfigurationResponse({
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
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : map['maxConcurrentSessions'] as int,
      readySessionInstances: map['readySessionInstances'] == null ? null : map['readySessionInstances'] as int,
    );
  }
}

