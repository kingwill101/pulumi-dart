// ignore_for_file: unused_element, unnecessary_cast

class FunctionTracingConfig {
  /// X-Ray tracing mode. Valid values: `Active`, `PassThrough`.
  final String mode;

  FunctionTracingConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory FunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionTracingConfig(
      mode: map['mode'] as String,
    );
  }
}
