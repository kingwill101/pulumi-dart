// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_items.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema {
  /// Description of the gateway target.
  final String? description;
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems?
      items;
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty>?
      properties;
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema].
  /// [description] Description of the gateway target.
  /// [items] Optional.
  /// [properties] Optional.
  /// [type] Required.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema({
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
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
