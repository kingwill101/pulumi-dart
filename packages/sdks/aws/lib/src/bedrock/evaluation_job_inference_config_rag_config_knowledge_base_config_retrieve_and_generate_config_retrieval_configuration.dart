// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_knowledge_base_config_retrieve_and_generate_config_retrieval_configuration_vector_search_configuration.dart';

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration {
  /// Vector search configuration. See `vectorSearchConfiguration` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration> vectorSearchConfiguration;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration].
  /// [vectorSearchConfiguration] Vector search configuration. See `vectorSearchConfiguration` Block below.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration({
    required this.vectorSearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorSearchConfiguration': pulumi.Input.mapInputValue<EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration, Map<String, dynamic>>(vectorSearchConfiguration, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration(
      vectorSearchConfiguration: pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration.fromMap((map['vectorSearchConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
