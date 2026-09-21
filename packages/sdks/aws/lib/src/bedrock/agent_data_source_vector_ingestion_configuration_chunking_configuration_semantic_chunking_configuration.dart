// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration {
  /// The dissimilarity threshold for splitting chunks.
  final pulumi.Input<int> breakpointPercentileThreshold;
  /// The buffer size.
  final pulumi.Input<int> bufferSize;
  /// The maximum number of tokens a chunk can contain.
  final pulumi.Input<int> maxToken;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationChunkingConfigurationSemanticChunkingConfiguration].
  /// [breakpointPercentileThreshold] The dissimilarity threshold for splitting chunks.
  /// [bufferSize] The buffer size.
  /// [maxToken] The maximum number of tokens a chunk can contain.
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
