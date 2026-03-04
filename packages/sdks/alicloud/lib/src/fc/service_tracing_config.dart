// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTracingConfig {
  /// Tracing parameters, which type is map[string]string. When the protocol type is Jaeger, the key is "endpoint" and the value is your tracing intranet endpoint. For example endpoint: &lt;http://tracing-analysis-dc-hz.aliyuncs.com/adapt_xxx/api/traces&gt;.
  final pulumi.Input<Map<String, String>> params;

  /// Tracing protocol type. Currently, only Jaeger is supported.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceTracingConfig].
  /// [params] Tracing parameters, which type is map[string]string. When the protocol type is Jaeger, the key is "endpoint" and the value is your tracing intranet endpoint. For example endpoint: &lt;http://tracing-analysis-dc-hz.aliyuncs.com/adapt_xxx/api/traces&gt;.
  /// [type] Tracing protocol type. Currently, only Jaeger is supported.
  ServiceTracingConfig({required this.params, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'params': params, 'type': type};
  }

  factory ServiceTracingConfig.fromMap(Map<String, dynamic> map) {
    return ServiceTracingConfig(
      params: pulumi.Input.fromValue(
        (map['params'] as Map).cast<String, String>(),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
