// ignore_for_file: unused_element, unnecessary_cast


class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration {
  /// The maximum number of tokens that a chunk can contain in this layer.
  final int maxTokens;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration].
  /// [maxTokens] The maximum number of tokens that a chunk can contain in this layer.
  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration({
    required this.maxTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTokens': maxTokens,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration(
      maxTokens: map['maxTokens'] as int,
    );
  }
}

