// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_and_generate_config.dart';
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_config.dart';

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig {
  /// Configuration for retrieval with response generation. See `retrieveAndGenerateConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig>? retrieveAndGenerateConfig;
  /// Configuration for retrieval only. See `retrieveConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig>? retrieveConfig;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig].
  /// [retrieveAndGenerateConfig] Configuration for retrieval with response generation. See `retrieveAndGenerateConfig` Block below.
  /// [retrieveConfig] Configuration for retrieval only. See `retrieveConfig` Block below.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig({
    this.retrieveAndGenerateConfig,
    this.retrieveConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retrieveAndGenerateConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig, Map<String, dynamic>>(retrieveAndGenerateConfig, (value) => value.toMap()),
      'retrieveConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig, Map<String, dynamic>>(retrieveConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig(
      retrieveAndGenerateConfig: (() { final guardedValue = map['retrieveAndGenerateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retrieveConfig: (() { final guardedValue = map['retrieveConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
