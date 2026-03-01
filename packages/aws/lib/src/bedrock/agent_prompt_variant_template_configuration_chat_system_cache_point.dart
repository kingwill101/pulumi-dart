// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatSystemCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatSystemCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentPromptVariantTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AgentPromptVariantTemplateConfigurationChatSystemCachePoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationChatSystemCachePoint(
      type: map['type'] as String,
    );
  }
}
