// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint(
      type: map['type'] as String,
    );
  }
}
