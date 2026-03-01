// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionTracingConfig {
  /// Tracing parameters
  final Map<String, String>? params;
  /// The tracing protocol type. Currently, only Jaeger is supported.
  final String? type;

  /// Creates a new [V3FunctionTracingConfig].
  /// [params] Tracing parameters
  /// [type] The tracing protocol type. Currently, only Jaeger is supported.
  V3FunctionTracingConfig({
    this.params,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
      'type': ?type,
    };
  }

  factory V3FunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionTracingConfig(
      params: map['params'] == null ? null : (map['params'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

