// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_cache_point.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_input_variable.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText {
  /// Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint?>? cachePoint;
  /// Variables in the prompt template. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.input_variable` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>?>? inputVariables;
  /// Message for the prompt.
  final pulumi.Input<String> text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText].
  /// [cachePoint] Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  /// [inputVariables] Variables in the prompt template. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.input_variable` Block for details.
  /// [text] Message for the prompt.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText({
    this.cachePoint,
    this.inputVariables,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText(
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputVariables: (() { final guardedValue = map['inputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>(guardedValue, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
