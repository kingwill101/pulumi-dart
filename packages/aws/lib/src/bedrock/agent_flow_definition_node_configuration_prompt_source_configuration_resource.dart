// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource {
  /// The Amazon Resource Name (ARN) of the prompt from Prompt management.
  final String promptArn;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource].
  /// [promptArn] The Amazon Resource Name (ARN) of the prompt from Prompt management.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource({
    required this.promptArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'promptArn': promptArn};
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource(
      promptArn: map['promptArn'] as String,
    );
  }
}
