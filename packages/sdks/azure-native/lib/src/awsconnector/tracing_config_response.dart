// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TracingConfig
class TracingConfigResponse {
  /// The tracing mode.
  final String? mode;

  /// Creates a new [TracingConfigResponse].
  /// [mode] The tracing mode.
  TracingConfigResponse({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory TracingConfigResponse.fromMap(Map<String, dynamic> map) {
    return TracingConfigResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

