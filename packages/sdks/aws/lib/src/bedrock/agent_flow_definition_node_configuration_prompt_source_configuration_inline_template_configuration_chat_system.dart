// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system_cache_point.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem {
  /// Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint?>? cachePoint;
  /// Message for the prompt.
  final pulumi.Input<String?>? text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem].
  /// [cachePoint] Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  /// [text] Message for the prompt.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'text': ?text,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem(
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
