// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_resource.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration {
  /// Contains configurations for a prompt that is defined inline. See Prompt Inline Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline?>? inline;
  /// Contains configurations for a prompt from Prompt management. See Prompt Resource Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource?>? resource;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration].
  /// [inline] Contains configurations for a prompt that is defined inline. See Prompt Inline Configuration for more information.
  /// [resource] Contains configurations for a prompt from Prompt management. See Prompt Resource Configuration for more information.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration({
    this.inline,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline, Map<String, dynamic>>(inline, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration(
      inline: (() { final guardedValue = map['inline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
