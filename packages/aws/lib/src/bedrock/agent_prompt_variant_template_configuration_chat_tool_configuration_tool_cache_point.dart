// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint(
      type: map['type'] as String,
    );
  }
}
