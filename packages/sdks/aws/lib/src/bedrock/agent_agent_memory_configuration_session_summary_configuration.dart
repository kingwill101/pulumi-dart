// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentMemoryConfigurationSessionSummaryConfiguration {
  /// Maximum number of recent session summaries to include in the agent's prompt context.
  final pulumi.Input<int> maxRecentSessions;

  /// Creates a new [AgentAgentMemoryConfigurationSessionSummaryConfiguration].
  /// [maxRecentSessions] Maximum number of recent session summaries to include in the agent's prompt context.
  const AgentAgentMemoryConfigurationSessionSummaryConfiguration({
    required this.maxRecentSessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRecentSessions': maxRecentSessions,
    };
  }

  factory AgentAgentMemoryConfigurationSessionSummaryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentMemoryConfigurationSessionSummaryConfiguration(
      maxRecentSessions: pulumi.Input.fromValue((map['maxRecentSessions'] as num).toInt()),
    );
  }
}
