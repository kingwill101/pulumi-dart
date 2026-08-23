// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_prompt_override_configuration_prompt_configuration.dart';

class AgentAgentPromptOverrideConfiguration {
  /// ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the `promptConfigurations` block must contain a `parserMode` value that is set to `OVERRIDDEN`.
  final pulumi.Input<String> overrideLambda;
  /// Configurations to override a prompt template in one part of an agent sequence. See `promptConfigurations` Block for details.
  final pulumi.Input<List<AgentAgentPromptOverrideConfigurationPromptConfiguration>> promptConfigurations;

  /// Creates a new [AgentAgentPromptOverrideConfiguration].
  /// [overrideLambda] ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the `promptConfigurations` block must contain a `parserMode` value that is set to `OVERRIDDEN`.
  /// [promptConfigurations] Configurations to override a prompt template in one part of an agent sequence. See `promptConfigurations` Block for details.
  const AgentAgentPromptOverrideConfiguration({
    required this.overrideLambda,
    required this.promptConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideLambda': overrideLambda,
      'promptConfigurations': pulumi.Input.mapInputValue<List<AgentAgentPromptOverrideConfigurationPromptConfiguration>, List<Map<String, dynamic>>>(promptConfigurations, (value) => pulumi.Input.encodeList<AgentAgentPromptOverrideConfigurationPromptConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentAgentPromptOverrideConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentPromptOverrideConfiguration(
      overrideLambda: pulumi.Input.fromValue(map['overrideLambda'] as String),
      promptConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentAgentPromptOverrideConfigurationPromptConfiguration>(map['promptConfigurations']!, (value) => AgentAgentPromptOverrideConfigurationPromptConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
