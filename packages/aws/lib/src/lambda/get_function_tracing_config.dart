// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionTracingConfig {
  /// Tracing mode. Valid values: `Active`, `PassThrough`.
  final String mode;

  /// Creates a new [GetFunctionTracingConfig].
  /// [mode] Tracing mode. Valid values: `Active`, `PassThrough`.
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
