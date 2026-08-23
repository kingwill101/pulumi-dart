// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool {
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool].
  /// [name] Name of the prompt.
  const AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
