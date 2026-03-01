// ignore_for_file: unused_element, unnecessary_cast


class ServiceTracingConfig {
  /// Tracing parameters, which type is map[string]string. When the protocol type is Jaeger, the key is "endpoint" and the value is your tracing intranet endpoint. For example endpoint: <http://tracing-analysis-dc-hz.aliyuncs.com/adapt_xxx/api/traces>.
  final Map<String, String> params;
  /// Tracing protocol type. Currently, only Jaeger is supported.
  final String type;

  /// Creates a new [ServiceTracingConfig].
  /// [params] Tracing parameters, which type is map[string]string. When the protocol type is Jaeger, the key is "endpoint" and the value is your tracing intranet endpoint. For example endpoint: <http://tracing-analysis-dc-hz.aliyuncs.com/adapt_xxx/api/traces>.
  /// [type] Tracing protocol type. Currently, only Jaeger is supported.
  ServiceTracingConfig({
    required this.params,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': params,
      'type': type,
    };
  }

  factory ServiceTracingConfig.fromMap(Map<String, dynamic> map) {
    return ServiceTracingConfig(
      params: (map['params'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

