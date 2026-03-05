// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionTracingConfig {
  /// X-Ray tracing mode. Valid values: `Active`, `PassThrough`.
  final pulumi.Input<String> mode;

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
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

