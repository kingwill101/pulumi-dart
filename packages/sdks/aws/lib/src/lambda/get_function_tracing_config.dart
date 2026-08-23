// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionTracingConfig {
  /// Tracing mode. Valid values: `Active`, `PassThrough`.
  final pulumi.Input<String> mode;

  /// Creates a new [GetFunctionTracingConfig].
  /// [mode] Tracing mode. Valid values: `Active`, `PassThrough`.
  const GetFunctionTracingConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetFunctionTracingConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionTracingConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
