// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_resource.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration {
  /// Contains configurations for a prompt that is defined inline. See Prompt Inline Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline?
  inline;

  /// Contains configurations for a prompt from Prompt management. See Prompt Resource Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource?
  resource;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration].
  /// [inline] Contains configurations for a prompt that is defined inline. See Prompt Inline Configuration for more information.
  /// [resource] Contains configurations for a prompt from Prompt management. See Prompt Resource Configuration for more information.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration({
    this.inline,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?inline == null ? null : inline!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration(
      inline: map['inline'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline.fromMap(
              (map['inline'] as Map).cast<String, dynamic>(),
            ),
      resource: map['resource'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource.fromMap(
              (map['resource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
