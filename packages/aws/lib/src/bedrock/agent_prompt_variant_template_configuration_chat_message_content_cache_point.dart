// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint(
      type: map['type'] as String,
    );
  }
}
