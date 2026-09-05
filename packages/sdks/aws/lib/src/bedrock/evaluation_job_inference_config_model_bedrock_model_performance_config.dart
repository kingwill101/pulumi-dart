// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig {
  /// Whether to use the latency-optimized or standard version of the model. Valid values: `standard`, `optimized`.
  final pulumi.Input<String?>? latency;

  /// Creates a new [EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig].
  /// [latency] Whether to use the latency-optimized or standard version of the model. Valid values: `standard`, `optimized`.
  const EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig({
    this.latency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latency': ?latency,
    };
  }

  factory EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig(
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
