// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_cache_point.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_input_variable.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText {
  /// A cache checkpoint within a template configuration. See Cache Point for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint?>? cachePoint;
  /// A list of variables in the prompt template. See Input Variable for more information.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>?>? inputVariables;
  /// The message for the prompt.
  final pulumi.Input<String> text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText].
  /// [cachePoint] A cache checkpoint within a template configuration. See Cache Point for more information.
  /// [inputVariables] A list of variables in the prompt template. See Input Variable for more information.
  /// [text] The message for the prompt.
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
