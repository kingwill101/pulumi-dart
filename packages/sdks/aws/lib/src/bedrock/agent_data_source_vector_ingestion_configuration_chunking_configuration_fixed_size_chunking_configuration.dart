// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration {
  /// Maximum number of tokens to include in a chunk.
  final pulumi.Input<int> maxTokens;
  /// Percentage of overlap between adjacent chunks of a data source.
  final pulumi.Input<int> overlapPercentage;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration].
  /// [maxTokens] Maximum number of tokens to include in a chunk.
  /// [overlapPercentage] Percentage of overlap between adjacent chunks of a data source.
  AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration({
    required this.maxTokens,
    required this.overlapPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTokens': maxTokens,
      'overlapPercentage': overlapPercentage,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration(
      maxTokens: (map['maxTokens'] as int).input(),
      overlapPercentage: (map['overlapPercentage'] as int).input(),
    );
  }
}

