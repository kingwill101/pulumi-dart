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
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint(
      type: map['type'] as String,
    );
  }
}
