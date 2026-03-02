// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionTracingConfig {
  /// Tracing parameters.
  final pulumi.Input<Map<String, String>> params;
  /// The tracing protocol type. Currently, only Jaeger is supported.
  final pulumi.Input<String> type;

  /// Creates a new [GetV3FunctionsFunctionTracingConfig].
  /// [params] Tracing parameters.
  /// [type] The tracing protocol type. Currently, only Jaeger is supported.
  GetV3FunctionsFunctionTracingConfig({
    required this.params,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': params,
      'type': type,
    };
  }

  factory GetV3FunctionsFunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionTracingConfig(
      params: ((map['params'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

