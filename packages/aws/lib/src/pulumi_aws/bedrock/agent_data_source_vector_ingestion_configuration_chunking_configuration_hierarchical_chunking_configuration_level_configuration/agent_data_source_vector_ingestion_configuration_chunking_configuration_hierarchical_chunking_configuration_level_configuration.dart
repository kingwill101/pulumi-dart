// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration {
  /// The maximum number of tokens that a chunk can contain in this layer.
  final int maxTokens;

  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration({
    required this.maxTokens,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxTokens'] = maxTokens;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationHierarchicalChunkingConfigurationLevelConfiguration(
      maxTokens: map['maxTokens'] as int,
    );
  }
}
