// ignore_for_file: unused_element, unnecessary_cast

class GuardrailActionTransferAgent {
  /// The name of the agent to transfer the conversation to. The agent must be
  /// in the same app as the current agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String agent;

  GuardrailActionTransferAgent({
    required this.agent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    return map;
  }

  factory GuardrailActionTransferAgent.fromMap(Map<String, dynamic> map) {
    return GuardrailActionTransferAgent(
      agent: map['agent'] as String,
    );
  }
}
