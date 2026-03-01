// ignore_for_file: unused_element, unnecessary_cast


/// Diagnostic Self tracing properties
class SelfTracingResponse {
  /// The self tracing interval.
  final int? intervalSeconds;
  /// The toggle to enable/disable self tracing.
  final String? mode;

  /// Creates a new [SelfTracingResponse].
  /// [intervalSeconds] The self tracing interval.
  /// [mode] The toggle to enable/disable self tracing.
  SelfTracingResponse({
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
      intervalSeconds: map['intervalSeconds'] == null ? null : map['intervalSeconds'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

