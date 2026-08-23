// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_model_bedrock_model_performance_config.dart';

class EvaluationJobInferenceConfigModelBedrockModel {
  /// JSON-formatted string of inference parameters for the model.
  final pulumi.Input<String>? inferenceParams;
  /// Identifier of the Amazon Bedrock model, or inference profile, used for inference.
  final pulumi.Input<String> modelIdentifier;
  /// Model's performance settings. See `performanceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig>? performanceConfig;

  /// Creates a new [EvaluationJobInferenceConfigModelBedrockModel].
  /// [inferenceParams] JSON-formatted string of inference parameters for the model.
  /// [modelIdentifier] Identifier of the Amazon Bedrock model, or inference profile, used for inference.
  /// [performanceConfig] Model's performance settings. See `performanceConfig` Block below.
  const EvaluationJobInferenceConfigModelBedrockModel({
    this.inferenceParams,
    required this.modelIdentifier,
    this.performanceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferenceParams': ?inferenceParams,
      'modelIdentifier': modelIdentifier,
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigModelBedrockModel.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigModelBedrockModel(
      inferenceParams: (() { final guardedValue = map['inferenceParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelIdentifier: pulumi.Input.fromValue(map['modelIdentifier'] as String),
      performanceConfig: (() { final guardedValue = map['performanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigModelBedrockModelPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
