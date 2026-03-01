// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileAutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/agent/environments/<EnvironmentID>"
  final String agent;

  /// Configure lifetime of the Dialogflow session.
  final String? sessionTtl;

  /// Creates a new [ConversationProfileAutomatedAgentConfig].
  /// [agent] ID of the Dialogflow agent environment to use.
  /// [sessionTtl] Configure lifetime of the Dialogflow session.
  ConversationProfileAutomatedAgentConfig({
    required this.agent,
    this.sessionTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'agent': agent, 'sessionTtl': ?sessionTtl};
  }

  factory ConversationProfileAutomatedAgentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileAutomatedAgentConfig(
      agent: map['agent'] as String,
      sessionTtl: map['sessionTtl'] == null
          ? null
          : map['sessionTtl'] as String,
    );
  }
}
