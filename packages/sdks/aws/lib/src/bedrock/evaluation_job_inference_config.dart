// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_model.dart';
import 'evaluation_job_inference_config_rag_config.dart';

class EvaluationJobInferenceConfig {
  /// One or more inference models. Automated jobs support a single model; jobs that use human workers support up to two models. See `model` Block below.
  final pulumi.Input<List<EvaluationJobInferenceConfigModel>?>? models;
  /// Inference configuration for a knowledge base evaluation job. See `ragConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfig?>? ragConfig;

  /// Creates a new [EvaluationJobInferenceConfig].
  /// [models] One or more inference models. Automated jobs support a single model; jobs that use human workers support up to two models. See `model` Block below.
  /// [ragConfig] Inference configuration for a knowledge base evaluation job. See `ragConfig` Block below.
  const EvaluationJobInferenceConfig({
    this.models,
    this.ragConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'models': ?pulumi.Input.mapOptionalInputValue<List<EvaluationJobInferenceConfigModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<EvaluationJobInferenceConfigModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ragConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfig, Map<String, dynamic>>(ragConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfig(
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobInferenceConfigModel>(guardedValue, (value) => EvaluationJobInferenceConfigModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ragConfig: (() { final guardedValue = map['ragConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
