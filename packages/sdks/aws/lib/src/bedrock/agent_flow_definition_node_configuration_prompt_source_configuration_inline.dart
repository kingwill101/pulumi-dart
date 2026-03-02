// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline {
  /// Additional fields to be included in the model request for the Prompt node.
  final pulumi.Input<String>? additionalModelRequestFields;
  /// Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration>? inferenceConfiguration;
  final pulumi.Input<String> modelId;
  /// Contains a prompt and variables in the prompt that can be replaced with values at runtime. See Prompt Template Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration>? templateConfiguration;
  /// The type of prompt template. Valid values: `TEXT`, `CHAT`.
  final pulumi.Input<String> templateType;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline].
  /// [additionalModelRequestFields] Additional fields to be included in the model request for the Prompt node.
  /// [inferenceConfiguration] Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  /// [modelId] Required.
  /// [templateConfiguration] Contains a prompt and variables in the prompt that can be replaced with values at runtime. See Prompt Template Configuration for more information.
  /// [templateType] The type of prompt template. Valid values: `TEXT`, `CHAT`.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline({
    this.additionalModelRequestFields,
    this.inferenceConfiguration,
    required this.modelId,
    this.templateConfiguration,
    required this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalModelRequestFields': ?additionalModelRequestFields,
      'inferenceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration, Map<String, dynamic>>(inferenceConfiguration, (value) => value.toMap()),
      'modelId': modelId,
      'templateConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'templateType': templateType,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline(
      additionalModelRequestFields: map['additionalModelRequestFields'] == null ? null : (map['additionalModelRequestFields'] as String).input(),
      inferenceConfiguration: map['inferenceConfiguration'] == null ? null : (AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration.fromMap((map['inferenceConfiguration'] as Map).cast<String, dynamic>())).input(),
      modelId: (map['modelId'] as String).input(),
      templateConfiguration: map['templateConfiguration'] == null ? null : (AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration.fromMap((map['templateConfiguration'] as Map).cast<String, dynamic>())).input(),
      templateType: (map['templateType'] as String).input(),
    );
  }
}

