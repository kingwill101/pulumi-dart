// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_items.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema {
  /// Description of the gateway target.
  final String? description;
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItems?
      items;
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty>?
      properties;
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema].
  /// [description] Description of the gateway target.
  /// [items] Optional.
  /// [properties] Optional.
  /// [type] Required.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema({
    this.description,
    this.items,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue.toMap();
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
