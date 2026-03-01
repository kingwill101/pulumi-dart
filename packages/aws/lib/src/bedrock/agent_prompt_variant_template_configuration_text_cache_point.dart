// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationTextCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final String type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationTextCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentPromptVariantTemplateConfigurationTextCachePoint({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AgentPromptVariantTemplateConfigurationTextCachePoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationTextCachePoint(
      type: map['type'] as String,
    );
  }
}
