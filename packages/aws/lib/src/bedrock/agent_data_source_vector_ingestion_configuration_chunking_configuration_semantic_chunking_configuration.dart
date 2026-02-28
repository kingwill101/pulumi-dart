// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration {
  /// The dissimilarity threshold for splitting chunks.
  final int breakpointPercentileThreshold;

  /// The buffer size.
  final int bufferSize;

  /// The maximum number of tokens a chunk can contain.
  final int maxToken;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration].
  /// [breakpointPercentileThreshold] The dissimilarity threshold for splitting chunks.
  /// [bufferSize] The buffer size.
  /// [maxToken] The maximum number of tokens a chunk can contain.
  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration({
    required this.breakpointPercentileThreshold,
    required this.bufferSize,
    required this.maxToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['breakpointPercentileThreshold'] = breakpointPercentileThreshold;
    map['bufferSize'] = bufferSize;
    map['maxToken'] = maxToken;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration(
      breakpointPercentileThreshold:
          map['breakpointPercentileThreshold'] as int,
      bufferSize: map['bufferSize'] as int,
      maxToken: map['maxToken'] as int,
    );
  }
}
