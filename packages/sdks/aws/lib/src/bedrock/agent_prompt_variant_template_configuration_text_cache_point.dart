// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantTemplateConfigurationTextCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentPromptVariantTemplateConfigurationTextCachePoint].
  /// [type] Indicates that the CachePointBlock is of the default type. Valid values: `default`.
  AgentPromptVariantTemplateConfigurationTextCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AgentPromptVariantTemplateConfigurationTextCachePoint.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationTextCachePoint(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

