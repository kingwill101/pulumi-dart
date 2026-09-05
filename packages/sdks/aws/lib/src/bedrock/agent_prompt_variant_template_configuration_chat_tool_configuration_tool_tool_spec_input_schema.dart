// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema {
  /// A JSON object defining the input schema for the tool.
  final pulumi.Input<String?>? json;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema].
  /// [json] A JSON object defining the input schema for the tool.
  const AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema({
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'json': ?json,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema(
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
