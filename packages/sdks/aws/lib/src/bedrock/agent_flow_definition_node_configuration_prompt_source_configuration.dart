// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_resource.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration {
  /// Configurations for a prompt that is defined inline. See `definition.node.configuration.prompt.source_configuration.inline` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline?>? inline;
  /// Configurations for a prompt from Prompt management. See `definition.node.configuration.prompt.source_configuration.resource` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource?>? resource;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration].
  /// [inline] Configurations for a prompt that is defined inline. See `definition.node.configuration.prompt.source_configuration.inline` Block for details.
  /// [resource] Configurations for a prompt from Prompt management. See `definition.node.configuration.prompt.source_configuration.resource` Block for details.
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
