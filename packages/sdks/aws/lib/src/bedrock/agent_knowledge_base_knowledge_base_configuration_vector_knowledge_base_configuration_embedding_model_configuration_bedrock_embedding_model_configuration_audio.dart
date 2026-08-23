// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration_audio_segmentation_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio {
  /// Configuration for segmenting audio content during processing. See `segmentationConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration> segmentationConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio].
  /// [segmentationConfiguration] Configuration for segmenting audio content during processing. See `segmentationConfiguration` block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio({
    required this.segmentationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentationConfiguration': pulumi.Input.mapInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration, Map<String, dynamic>>(segmentationConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio(
      segmentationConfiguration: pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration.fromMap((map['segmentationConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
