// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_model_bedrock_model.dart';
import 'evaluation_job_inference_config_model_precomputed_inference_source.dart';

class EvaluationJobInferenceConfigModel {
  /// Amazon Bedrock model. See `bedrockModel` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigModelBedrockModel?>? bedrockModel;
  /// Model where you provide your own precomputed inference response data. See `precomputedInferenceSource` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigModelPrecomputedInferenceSource?>? precomputedInferenceSource;

  /// Creates a new [EvaluationJobInferenceConfigModel].
  /// [bedrockModel] Amazon Bedrock model. See `bedrockModel` Block below.
  /// [precomputedInferenceSource] Model where you provide your own precomputed inference response data. See `precomputedInferenceSource` Block below.
  const EvaluationJobInferenceConfigModel({
    this.bedrockModel,
    this.precomputedInferenceSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockModel': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigModelBedrockModel, Map<String, dynamic>>(bedrockModel, (value) => value.toMap()),
      'precomputedInferenceSource': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigModelPrecomputedInferenceSource, Map<String, dynamic>>(precomputedInferenceSource, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigModel.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigModel(
      bedrockModel: (() { final guardedValue = map['bedrockModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigModelBedrockModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      precomputedInferenceSource: (() { final guardedValue = map['precomputedInferenceSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigModelPrecomputedInferenceSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
