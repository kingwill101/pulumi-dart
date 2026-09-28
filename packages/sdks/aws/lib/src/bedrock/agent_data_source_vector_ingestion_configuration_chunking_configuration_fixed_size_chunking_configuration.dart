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
  const AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfiguration({
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
      maxTokens: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxTokens'])),
      overlapPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['overlapPercentage'])),
    );
  }
}
