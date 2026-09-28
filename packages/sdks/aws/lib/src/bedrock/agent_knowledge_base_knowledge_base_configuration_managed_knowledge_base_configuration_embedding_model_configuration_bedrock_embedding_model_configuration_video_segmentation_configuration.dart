// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration {
  /// Duration in seconds for each audio or video segment.
  final pulumi.Input<int> fixedLengthDuration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration].
  /// [fixedLengthDuration] Duration in seconds for each audio or video segment.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLengthDuration': fixedLengthDuration,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration(
      fixedLengthDuration: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['fixedLengthDuration'])),
    );
  }
}
