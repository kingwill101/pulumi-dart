// ignore_for_file: unused_element, unnecessary_cast


class AgentFlowDefinitionNodeConfigurationAgent {
  /// The Amazon Resource Name (ARN) of the alias of the agent to invoke.
  final String agentAliasArn;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationAgent].
  /// [agentAliasArn] The Amazon Resource Name (ARN) of the alias of the agent to invoke.
  AgentFlowDefinitionNodeConfigurationAgent({
    required this.agentAliasArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAliasArn': agentAliasArn,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationAgent.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationAgent(
      agentAliasArn: map['agentAliasArn'] as String,
    );
  }
}

