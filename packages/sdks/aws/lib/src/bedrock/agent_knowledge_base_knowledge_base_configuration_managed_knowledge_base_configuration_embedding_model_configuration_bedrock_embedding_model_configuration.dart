// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_managed_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration_audio.dart';
import 'agent_knowledge_base_knowledge_base_configuration_managed_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration_video.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration {
  /// Configuration for processing audio content in multimodal knowledge bases. See `audio` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio>? audio;
  /// Dimension details for the vector configuration used on the Bedrock embeddings model.
  final pulumi.Input<int>? dimensions;
  /// Data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings.  Valid values are `FLOAT32` and `BINARY`.
  final pulumi.Input<String>? embeddingDataType;
  /// Configuration for processing video content in multimodal knowledge bases. See `video` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo>? video;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration].
  /// [audio] Configuration for processing audio content in multimodal knowledge bases. See `audio` block for details.
  /// [dimensions] Dimension details for the vector configuration used on the Bedrock embeddings model.
  /// [embeddingDataType] Data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings.  Valid values are `FLOAT32` and `BINARY`.
  /// [video] Configuration for processing video content in multimodal knowledge bases. See `video` block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration({
    this.audio,
    this.dimensions,
    this.embeddingDataType,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'dimensions': ?dimensions,
      'embeddingDataType': ?embeddingDataType,
      'video': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo, Map<String, dynamic>>(video, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      embeddingDataType: (() { final guardedValue = map['embeddingDataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      video: (() { final guardedValue = map['video']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
