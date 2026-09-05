// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_config_knowledge_base_retrieval_configuration.dart';

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig {
  /// Identifier of the knowledge base.
  final pulumi.Input<String> knowledgeBaseId;
  /// Knowledge base retrieval configuration. See `knowledgeBaseRetrievalConfiguration` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration?>? knowledgeBaseRetrievalConfiguration;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig].
  /// [knowledgeBaseId] Identifier of the knowledge base.
  /// [knowledgeBaseRetrievalConfiguration] Knowledge base retrieval configuration. See `knowledgeBaseRetrievalConfiguration` Block below.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig({
    required this.knowledgeBaseId,
    this.knowledgeBaseRetrievalConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseId': knowledgeBaseId,
      'knowledgeBaseRetrievalConfiguration': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration, Map<String, dynamic>>(knowledgeBaseRetrievalConfiguration, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig(
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      knowledgeBaseRetrievalConfiguration: (() { final guardedValue = map['knowledgeBaseRetrievalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
