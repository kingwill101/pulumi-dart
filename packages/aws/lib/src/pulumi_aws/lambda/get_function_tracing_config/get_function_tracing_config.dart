// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionTracingConfig {
  /// Tracing mode. Valid values: `Active`, `PassThrough`.
  final String mode;

  GetFunctionTracingConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetFunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionTracingConfig(
      mode: map['mode'] as String,
    );
  }
}
