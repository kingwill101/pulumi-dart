// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_prompt_override_configuration_prompt_configuration.dart';

class AgentAgentPromptOverrideConfiguration {
  /// ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the `prompt_configurations` block must contain a `parser_mode` value that is set to `OVERRIDDEN`.
  final String overrideLambda;
  /// Configurations to override a prompt template in one part of an agent sequence. See `prompt_configurations` Block for details.
  final List<AgentAgentPromptOverrideConfigurationPromptConfiguration> promptConfigurations;

  /// Creates a new [AgentAgentPromptOverrideConfiguration].
  /// [overrideLambda] ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the `prompt_configurations` block must contain a `parser_mode` value that is set to `OVERRIDDEN`.
  /// [promptConfigurations] Configurations to override a prompt template in one part of an agent sequence. See `prompt_configurations` Block for details.
  AgentAgentPromptOverrideConfiguration({
    required this.overrideLambda,
    required this.promptConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideLambda': overrideLambda,
      'promptConfigurations': pulumi.Input.encodeList<AgentAgentPromptOverrideConfigurationPromptConfiguration, Map<String, dynamic>>(promptConfigurations, (value) => value.toMap()),
    };
  }

  factory AgentAgentPromptOverrideConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentPromptOverrideConfiguration(
      overrideLambda: map['overrideLambda'] as String,
      promptConfigurations: pulumi.Input.decodeList<AgentAgentPromptOverrideConfigurationPromptConfiguration>(map['promptConfigurations'], (value) => AgentAgentPromptOverrideConfigurationPromptConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

