// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration {
  /// Maximum number of tokens to include in a chunk.
  final int maxTokens;

  /// Percentage of overlap between adjacent chunks of a data source.
  final int overlapPercentage;

  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration({
    required this.maxTokens,
    required this.overlapPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxTokens'] = maxTokens;
    map['overlapPercentage'] = overlapPercentage;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration(
      maxTokens: map['maxTokens'] as int,
      overlapPercentage: map['overlapPercentage'] as int,
    );
  }
}
