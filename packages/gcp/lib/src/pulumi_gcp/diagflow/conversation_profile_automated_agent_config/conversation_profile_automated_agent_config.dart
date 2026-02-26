// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileAutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/agent/environments/<EnvironmentID>"
  final String agent;

  /// Configure lifetime of the Dialogflow session.
  final String? sessionTtl;

  ConversationProfileAutomatedAgentConfig({
    required this.agent,
    this.sessionTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    final sessionTtlValue = sessionTtl;
    if (sessionTtlValue != null) {
      map['sessionTtl'] = sessionTtlValue;
    }
    return map;
  }

  factory ConversationProfileAutomatedAgentConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileAutomatedAgentConfig(
      agent: map['agent'] as String,
      sessionTtl:
          map['sessionTtl'] == null ? null : map['sessionTtl'] as String,
    );
  }
}
