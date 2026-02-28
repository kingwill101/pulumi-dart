// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint(
      type: map['type'] as String,
    );
  }
}
