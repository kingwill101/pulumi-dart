// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_cache_point.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text_input_variable.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText {
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint>? cachePoint;
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>>? inputVariables;
  final pulumi.Input<String> text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText].
  /// [cachePoint] Optional.
  /// [inputVariables] Optional.
  /// [text] Required.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText({
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
      cachePoint: map['cachePoint'] == null ? null : ((AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint.fromMap((map['cachePoint']! as Map).cast<String, dynamic>())).input()).input(),
      inputVariables: map['inputVariables'] == null ? null : ((pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable>(map['inputVariables']!, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      text: (map['text'] as String).input(),
    );
  }
}

