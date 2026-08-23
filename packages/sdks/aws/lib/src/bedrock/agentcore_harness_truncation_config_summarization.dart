// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessTruncationConfigSummarization {
  /// Number of recent messages to preserve without summarization.
  final pulumi.Input<int> preserveRecentMessages;
  /// Custom system prompt for the summarization model.
  final pulumi.Input<String> summarizationSystemPrompt;
  /// Ratio of the conversation to summarize (0 to 1).
  final pulumi.Input<double> summaryRatio;

  /// Creates a new [AgentcoreHarnessTruncationConfigSummarization].
  /// [preserveRecentMessages] Number of recent messages to preserve without summarization.
  /// [summarizationSystemPrompt] Custom system prompt for the summarization model.
  /// [summaryRatio] Ratio of the conversation to summarize (0 to 1).
  const AgentcoreHarnessTruncationConfigSummarization({
    required this.preserveRecentMessages,
    required this.summarizationSystemPrompt,
    required this.summaryRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveRecentMessages': preserveRecentMessages,
      'summarizationSystemPrompt': summarizationSystemPrompt,
      'summaryRatio': summaryRatio,
    };
  }

  factory AgentcoreHarnessTruncationConfigSummarization.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessTruncationConfigSummarization(
      preserveRecentMessages: pulumi.Input.fromValue(map['preserveRecentMessages'] as int),
      summarizationSystemPrompt: pulumi.Input.fromValue(map['summarizationSystemPrompt'] as String),
      summaryRatio: pulumi.Input.fromValue(map['summaryRatio'] as double),
    );
  }
}
