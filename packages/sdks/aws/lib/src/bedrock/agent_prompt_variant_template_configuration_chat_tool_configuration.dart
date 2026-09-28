// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_choice.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfiguration {
  /// Configuration for which tools the model should request when invoked. See `toolChoice` Block for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice?>? toolChoice;
  /// List of tools to pass to a model. See `variant.template_configuration.chat.tool_configuration.tool` Block for more information.
  final pulumi.Input<List<AgentPromptVariantTemplateConfigurationChatToolConfigurationTool>?>? tools;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfiguration].
  /// [toolChoice] Configuration for which tools the model should request when invoked. See `toolChoice` Block for more information.
  /// [tools] List of tools to pass to a model. See `variant.template_configuration.chat.tool_configuration.tool` Block for more information.
  const AgentPromptVariantTemplateConfigurationChatToolConfiguration({
    this.toolChoice,
    this.tools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolChoice': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice, Map<String, dynamic>>(toolChoice, (value) => value.toMap()),
      'tools': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariantTemplateConfigurationChatToolConfigurationTool>, List<Map<String, dynamic>>>(tools, (value) => pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationChatToolConfigurationTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfiguration(
      toolChoice: (() { final guardedValue = map['toolChoice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationChatToolConfigurationTool>(guardedValue, (value) => AgentPromptVariantTemplateConfigurationChatToolConfigurationTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
