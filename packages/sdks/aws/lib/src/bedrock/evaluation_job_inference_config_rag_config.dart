// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config.dart';
import 'evaluation_job_inference_config_rag_config_precomputed_rag_source_config.dart';

class EvaluationJobInferenceConfigRagConfig {
  /// Amazon Bedrock knowledge base. See `knowledgeBaseConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig?>? knowledgeBaseConfig;
  /// RAG source where you provide your own precomputed inference response data. See `precomputedRagSourceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig?>? precomputedRagSourceConfig;

  /// Creates a new [EvaluationJobInferenceConfigRagConfig].
  /// [knowledgeBaseConfig] Amazon Bedrock knowledge base. See `knowledgeBaseConfig` Block below.
  /// [precomputedRagSourceConfig] RAG source where you provide your own precomputed inference response data. See `precomputedRagSourceConfig` Block below.
  const EvaluationJobInferenceConfigRagConfig({
    this.knowledgeBaseConfig,
    this.precomputedRagSourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig, Map<String, dynamic>>(knowledgeBaseConfig, (value) => value.toMap()),
      'precomputedRagSourceConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig, Map<String, dynamic>>(precomputedRagSourceConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfig(
      knowledgeBaseConfig: (() { final guardedValue = map['knowledgeBaseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      precomputedRagSourceConfig: (() { final guardedValue = map['precomputedRagSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
