// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration {
  /// Dissimilarity threshold for splitting chunks.
  final pulumi.Input<int> breakpointPercentileThreshold;
  /// Buffer size.
  final pulumi.Input<int> bufferSize;
  /// Maximum number of tokens a chunk can contain.
  final pulumi.Input<int> maxToken;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration].
  /// [breakpointPercentileThreshold] Dissimilarity threshold for splitting chunks.
  /// [bufferSize] Buffer size.
  /// [maxToken] Maximum number of tokens a chunk can contain.
  const AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration({
    required this.breakpointPercentileThreshold,
    required this.bufferSize,
    required this.maxToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakpointPercentileThreshold': breakpointPercentileThreshold,
      'bufferSize': bufferSize,
      'maxToken': maxToken,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration(
      breakpointPercentileThreshold: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['breakpointPercentileThreshold'])),
      bufferSize: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['bufferSize'])),
      maxToken: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxToken'])),
    );
  }
}
