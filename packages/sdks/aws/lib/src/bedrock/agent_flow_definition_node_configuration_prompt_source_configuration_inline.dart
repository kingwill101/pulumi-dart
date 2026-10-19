// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline {
  /// Additional fields to be included in the model request for the Prompt node.
  final pulumi.Input<String?>? additionalModelRequestFields;
  /// Inference configurations for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.inference_configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration?>? inferenceConfiguration;
  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) to run inference with.
  final pulumi.Input<String> modelId;
  /// Prompt and variables in the prompt that can be replaced with values at runtime. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration?>? templateConfiguration;
  /// Type of prompt template. Valid values: `TEXT`, `CHAT`.
  final pulumi.Input<String> templateType;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline].
  /// [additionalModelRequestFields] Additional fields to be included in the model request for the Prompt node.
  /// [inferenceConfiguration] Inference configurations for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.inference_configuration` Block for details.
  /// [modelId] Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) to run inference with.
  /// [templateConfiguration] Prompt and variables in the prompt that can be replaced with values at runtime. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration` Block for details.
  /// [templateType] Type of prompt template. Valid values: `TEXT`, `CHAT`.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline({
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
      additionalModelRequestFields: (() { final guardedValue = map['additionalModelRequestFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceConfiguration: (() { final guardedValue = map['inferenceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      templateConfiguration: (() { final guardedValue = map['templateConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateType: pulumi.Input.fromValue(map['templateType'] as String),
    );
  }
}
