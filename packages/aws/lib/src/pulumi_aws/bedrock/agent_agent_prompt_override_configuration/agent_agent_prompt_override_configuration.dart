// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_prompt_override_configuration_prompt_configuration/agent_agent_prompt_override_configuration_prompt_configuration.dart';

class AgentAgentPromptOverrideConfiguration {
  /// ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the <span pulumi-lang-nodejs="`promptConfigurations`" pulumi-lang-dotnet="`PromptConfigurations`" pulumi-lang-go="`promptConfigurations`" pulumi-lang-python="`prompt_configurations`" pulumi-lang-yaml="`promptConfigurations`" pulumi-lang-java="`promptConfigurations`">`prompt_configurations`</span> block must contain a <span pulumi-lang-nodejs="`parserMode`" pulumi-lang-dotnet="`ParserMode`" pulumi-lang-go="`parserMode`" pulumi-lang-python="`parser_mode`" pulumi-lang-yaml="`parserMode`" pulumi-lang-java="`parserMode`">`parser_mode`</span> value that is set to `OVERRIDDEN`.
  final String overrideLambda;

  /// Configurations to override a prompt template in one part of an agent sequence. See <span pulumi-lang-nodejs="`promptConfigurations`" pulumi-lang-dotnet="`PromptConfigurations`" pulumi-lang-go="`promptConfigurations`" pulumi-lang-python="`prompt_configurations`" pulumi-lang-yaml="`promptConfigurations`" pulumi-lang-java="`promptConfigurations`">`prompt_configurations`</span> Block for details.
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
