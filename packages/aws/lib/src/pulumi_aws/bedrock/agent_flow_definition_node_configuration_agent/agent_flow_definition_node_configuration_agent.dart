// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationAgent {
  /// The Amazon Resource Name (ARN) of the alias of the agent to invoke.
  final String agentAliasArn;

  AgentFlowDefinitionNodeConfigurationAgent({
    required this.agentAliasArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentAliasArn'] = agentAliasArn;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationAgent.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationAgent(
      agentAliasArn: map['agentAliasArn'] as String,
    );
  }
}
