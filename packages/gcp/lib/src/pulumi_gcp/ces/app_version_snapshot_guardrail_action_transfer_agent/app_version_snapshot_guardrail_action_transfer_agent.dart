// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailActionTransferAgent {
  /// (Output)
  /// The name of the agent to transfer the conversation to. The agent must be
  /// in the same app as the current agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String? agent;

  AppVersionSnapshotGuardrailActionTransferAgent({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentValue = agent;
    if (agentValue != null) {
      map['agent'] = agentValue;
    }
    return map;
  }

  factory AppVersionSnapshotGuardrailActionTransferAgent.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionTransferAgent(
      agent: map['agent'] == null ? null : map['agent'] as String,
    );
  }
}
