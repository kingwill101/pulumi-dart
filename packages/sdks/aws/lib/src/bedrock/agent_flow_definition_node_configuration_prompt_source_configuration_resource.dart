// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource {
  /// The Amazon Resource Name (ARN) of the prompt from Prompt management.
  final pulumi.Input<String> promptArn;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource].
  /// [promptArn] The Amazon Resource Name (ARN) of the prompt from Prompt management.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource({
    required this.promptArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'promptArn': promptArn,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource(
      promptArn: pulumi.Input.fromValue(map['promptArn'] as String),
    );
  }
}
