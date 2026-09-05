// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_and_generate_config_retrieval_configuration.dart';

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig {
  /// Identifier of the knowledge base.
  final pulumi.Input<String> knowledgeBaseId;
  /// ARN of the foundation model, or inference profile, used to generate responses.
  final pulumi.Input<String> modelArn;
  /// Knowledge base retrieval configuration. See `retrievalConfiguration` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration?>? retrievalConfiguration;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig].
  /// [knowledgeBaseId] Identifier of the knowledge base.
  /// [modelArn] ARN of the foundation model, or inference profile, used to generate responses.
  /// [retrievalConfiguration] Knowledge base retrieval configuration. See `retrievalConfiguration` Block below.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig({
    required this.knowledgeBaseId,
    required this.modelArn,
    this.retrievalConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseId': knowledgeBaseId,
      'modelArn': modelArn,
      'retrievalConfiguration': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration, Map<String, dynamic>>(retrievalConfiguration, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig(
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
      retrievalConfiguration: (() { final guardedValue = map['retrievalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
