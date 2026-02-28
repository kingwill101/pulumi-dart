// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration {
  /// Dimension details for the vector configuration used on the Bedrock embeddings model.
  final int? dimensions;

  /// Data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings.  Valid values are `FLOAT32` and `BINARY`.
  final String? embeddingDataType;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration].
  /// [dimensions] Dimension details for the vector configuration used on the Bedrock embeddings model.
  /// [embeddingDataType] Data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings.  Valid values are `FLOAT32` and `BINARY`.
  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration({
    this.dimensions,
    this.embeddingDataType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final embeddingDataTypeValue = embeddingDataType;
    if (embeddingDataTypeValue != null) {
      map['embeddingDataType'] = embeddingDataTypeValue;
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration(
      dimensions: map['dimensions'] == null ? null : map['dimensions'] as int,
      embeddingDataType: map['embeddingDataType'] == null
          ? null
          : map['embeddingDataType'] as String,
    );
  }
}
