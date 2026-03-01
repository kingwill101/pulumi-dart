// ignore_for_file: unused_element, unnecessary_cast


class FunctionTracingConfig {
  /// X-Ray tracing mode. Valid values: `Active`, `PassThrough`.
  final String mode;

  /// Creates a new [FunctionTracingConfig].
  /// [mode] X-Ray tracing mode. Valid values: `Active`, `PassThrough`.
  FunctionTracingConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory FunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionTracingConfig(
      mode: map['mode'] as String,
    );
  }
}

