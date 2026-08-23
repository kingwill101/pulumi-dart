// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_config_knowledge_base_retrieval_configuration_vector_search_configuration.dart';

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration {
  /// Vector search configuration. See `vectorSearchConfiguration` Block above.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration> vectorSearchConfiguration;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration].
  /// [vectorSearchConfiguration] Vector search configuration. See `vectorSearchConfiguration` Block above.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration({
    required this.vectorSearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorSearchConfiguration': pulumi.Input.mapInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration, Map<String, dynamic>>(vectorSearchConfiguration, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration(
      vectorSearchConfiguration: pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration.fromMap((map['vectorSearchConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
