// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_prompt_override_configuration_prompt_configuration/agent_agent_prompt_override_configuration_prompt_configuration.dart';

class AgentAgentPromptOverrideConfiguration {
  /// ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the `prompt_configurations` block must contain a `parser_mode` value that is set to `OVERRIDDEN`.
  final String overrideLambda;

  /// Configurations to override a prompt template in one part of an agent sequence. See `prompt_configurations` Block for details.
  final List<AgentAgentPromptOverrideConfigurationPromptConfiguration>
      promptConfigurations;

  AgentAgentPromptOverrideConfiguration({
    required this.overrideLambda,
    required this.promptConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['overrideLambda'] = overrideLambda;
    map['promptConfigurations'] = Input.encodeList<
        AgentAgentPromptOverrideConfigurationPromptConfiguration,
        Map<String, dynamic>>(promptConfigurations, (value) => value.toMap());
    return map;
  }

  factory AgentAgentPromptOverrideConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentPromptOverrideConfiguration(
      overrideLambda: map['overrideLambda'] as String,
      promptConfigurations: Input.decodeList<
              AgentAgentPromptOverrideConfigurationPromptConfiguration>(
          map['promptConfigurations'],
          (value) =>
              AgentAgentPromptOverrideConfigurationPromptConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
