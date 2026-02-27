// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_cache_point/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_cache_point.dart';
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_input_variable/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_input_variable.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText {
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint?
      cachePoint;
  final List<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>?
      inputVariables;
  final String text;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText({
    this.cachePoint,
    this.inputVariables,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cachePointValue = cachePoint;
    if (cachePointValue != null) {
      map['cachePoint'] = cachePointValue.toMap();
    }
    final inputVariablesValue = inputVariables;
    if (inputVariablesValue != null) {
      map['inputVariables'] = pulumi.Input.encodeList<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable,
          Map<String, dynamic>>(inputVariablesValue, (value) => value.toMap());
    }
    map['text'] = text;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint
              .fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      inputVariables: map['inputVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>(
              map['inputVariables'],
              (value) =>
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable
                      .fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
