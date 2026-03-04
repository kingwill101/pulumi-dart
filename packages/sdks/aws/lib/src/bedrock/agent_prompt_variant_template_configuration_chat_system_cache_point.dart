// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantTemplateConfigurationChatSystemCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final pulumi.Input<String> type;

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
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
