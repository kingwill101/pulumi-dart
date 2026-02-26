// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration/agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration.dart';
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline {
  /// Additional fields to be included in the model request for the Prompt node.
  final String? additionalModelRequestFields;

  /// Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration?
      inferenceConfiguration;
  final String modelId;

  /// Contains a prompt and variables in the prompt that can be replaced with values at runtime. See Prompt Template Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration?
      templateConfiguration;

  /// The type of prompt template. Valid values: `TEXT`, `CHAT`.
  final String templateType;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline({
    this.additionalModelRequestFields,
    this.inferenceConfiguration,
    required this.modelId,
    this.templateConfiguration,
    required this.templateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalModelRequestFieldsValue = additionalModelRequestFields;
    if (additionalModelRequestFieldsValue != null) {
      map['additionalModelRequestFields'] = additionalModelRequestFieldsValue;
    }
    final inferenceConfigurationValue = inferenceConfiguration;
    if (inferenceConfigurationValue != null) {
      map['inferenceConfiguration'] = inferenceConfigurationValue.toMap();
    }
    map['modelId'] = modelId;
    final templateConfigurationValue = templateConfiguration;
    if (templateConfigurationValue != null) {
      map['templateConfiguration'] = templateConfigurationValue.toMap();
    }
    map['templateType'] = templateType;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline(
      additionalModelRequestFields: map['additionalModelRequestFields'] == null
          ? null
          : map['additionalModelRequestFields'] as String,
      inferenceConfiguration: map['inferenceConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration
              .fromMap((map['inferenceConfiguration'] as Map)
                  .cast<String, dynamic>()),
      modelId: map['modelId'] as String,
      templateConfiguration: map['templateConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration
              .fromMap((map['templateConfiguration'] as Map)
                  .cast<String, dynamic>()),
      templateType: map['templateType'] as String,
    );
  }
}
