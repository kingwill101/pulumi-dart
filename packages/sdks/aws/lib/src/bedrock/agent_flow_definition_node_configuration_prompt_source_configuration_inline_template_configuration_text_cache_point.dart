// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint {
  /// Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint].
  /// [type] Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
