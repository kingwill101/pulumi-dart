// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  const AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
