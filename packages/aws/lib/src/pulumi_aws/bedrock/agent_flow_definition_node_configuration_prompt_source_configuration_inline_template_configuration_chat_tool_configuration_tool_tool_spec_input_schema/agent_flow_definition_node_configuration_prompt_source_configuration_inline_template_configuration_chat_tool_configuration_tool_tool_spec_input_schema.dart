// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema {
  /// A JSON object defining the input schema for the tool.
  final String? json;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema({
    this.json,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonValue = json;
    if (jsonValue != null) {
      map['json'] = jsonValue;
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema(
      json: map['json'] == null ? null : map['json'] as String,
    );
  }
}
