// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_prompt_override_configuration_prompt_configuration_inference_configuration.dart';

class AgentAgentPromptOverrideConfigurationPromptConfiguration {
  /// prompt template with which to replace the default prompt template. You can use placeholder variables in the base prompt template to customize the prompt. For more information, see [Prompt template placeholder variables](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html).
  final String basePromptTemplate;

  /// Inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the `prompt_type`. For more information, see [Inference parameters for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html). See `inference_configuration` Block for details.
  final List<
          AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration>
      inferenceConfigurations;

  /// Whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the `prompt_type`. If you set the argument as `OVERRIDDEN`, the `override_lambda` argument in the `prompt_override_configuration` block must be specified with the ARN of a Lambda function. Valid values: `DEFAULT`, `OVERRIDDEN`.
  final String parserMode;

  /// Whether to override the default prompt template for this `prompt_type`. Set this argument to `OVERRIDDEN` to use the prompt that you provide in the `base_prompt_template`. If you leave it as `DEFAULT`, the agent uses a default prompt template. Valid values: `DEFAULT`, `OVERRIDDEN`.
  final String promptCreationMode;

  /// Whether to allow the agent to carry out the step specified in the `prompt_type`. If you set this argument to `DISABLED`, the agent skips that step. Valid Values: `ENABLED`, `DISABLED`.
  final String promptState;

  /// Step in the agent sequence that this prompt configuration applies to. Valid values: `PRE_PROCESSING`, `ORCHESTRATION`, `POST_PROCESSING`, `KNOWLEDGE_BASE_RESPONSE_GENERATION`.
  final String promptType;

  /// Creates a new [AgentAgentPromptOverrideConfigurationPromptConfiguration].
  /// [basePromptTemplate] prompt template with which to replace the default prompt template. You can use placeholder variables in the base prompt template to customize the prompt. For more information, see [Prompt template placeholder variables](https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html).
  /// [inferenceConfigurations] Inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the `prompt_type`. For more information, see [Inference parameters for foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html). See `inference_configuration` Block for details.
  /// [parserMode] Whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the `prompt_type`. If you set the argument as `OVERRIDDEN`, the `override_lambda` argument in the `prompt_override_configuration` block must be specified with the ARN of a Lambda function. Valid values: `DEFAULT`, `OVERRIDDEN`.
  /// [promptCreationMode] Whether to override the default prompt template for this `prompt_type`. Set this argument to `OVERRIDDEN` to use the prompt that you provide in the `base_prompt_template`. If you leave it as `DEFAULT`, the agent uses a default prompt template. Valid values: `DEFAULT`, `OVERRIDDEN`.
  /// [promptState] Whether to allow the agent to carry out the step specified in the `prompt_type`. If you set this argument to `DISABLED`, the agent skips that step. Valid Values: `ENABLED`, `DISABLED`.
  /// [promptType] Step in the agent sequence that this prompt configuration applies to. Valid values: `PRE_PROCESSING`, `ORCHESTRATION`, `POST_PROCESSING`, `KNOWLEDGE_BASE_RESPONSE_GENERATION`.
  AgentAgentPromptOverrideConfigurationPromptConfiguration({
    required this.basePromptTemplate,
    required this.inferenceConfigurations,
    required this.parserMode,
    required this.promptCreationMode,
    required this.promptState,
    required this.promptType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basePromptTemplate'] = basePromptTemplate;
    map['inferenceConfigurations'] = pulumi.Input.encodeList<
        AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration,
        Map<String,
            dynamic>>(inferenceConfigurations, (value) => value.toMap());
    map['parserMode'] = parserMode;
    map['promptCreationMode'] = promptCreationMode;
    map['promptState'] = promptState;
    map['promptType'] = promptType;
    return map;
  }

  factory AgentAgentPromptOverrideConfigurationPromptConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentPromptOverrideConfigurationPromptConfiguration(
      basePromptTemplate: map['basePromptTemplate'] as String,
      inferenceConfigurations: pulumi.Input.decodeList<
              AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration>(
          map['inferenceConfigurations'],
          (value) =>
              AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      parserMode: map['parserMode'] as String,
      promptCreationMode: map['promptCreationMode'] as String,
      promptState: map['promptState'] as String,
      promptType: map['promptType'] as String,
    );
  }
}
