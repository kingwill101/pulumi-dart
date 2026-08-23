// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration {
  /// Number of text chunks to retrieve.
  final pulumi.Input<int>? numberOfResults;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration].
  /// [numberOfResults] Number of text chunks to retrieve.
  const EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration({
    this.numberOfResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfResults': ?numberOfResults,
    };
  }

  factory EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration(
      numberOfResults: (() { final guardedValue = map['numberOfResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
