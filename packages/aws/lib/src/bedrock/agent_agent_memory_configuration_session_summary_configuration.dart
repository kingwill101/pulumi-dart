// ignore_for_file: unused_element, unnecessary_cast


class AgentAgentMemoryConfigurationSessionSummaryConfiguration {
  /// Maximum number of recent session summaries to include in the agent's prompt context.
  final int maxRecentSessions;

  /// Creates a new [AgentAgentMemoryConfigurationSessionSummaryConfiguration].
  /// [maxRecentSessions] Maximum number of recent session summaries to include in the agent's prompt context.
  AgentAgentMemoryConfigurationSessionSummaryConfiguration({
    required this.maxRecentSessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRecentSessions': maxRecentSessions,
    };
  }

  factory AgentAgentMemoryConfigurationSessionSummaryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentMemoryConfigurationSessionSummaryConfiguration(
      maxRecentSessions: map['maxRecentSessions'] as int,
    );
  }
}

