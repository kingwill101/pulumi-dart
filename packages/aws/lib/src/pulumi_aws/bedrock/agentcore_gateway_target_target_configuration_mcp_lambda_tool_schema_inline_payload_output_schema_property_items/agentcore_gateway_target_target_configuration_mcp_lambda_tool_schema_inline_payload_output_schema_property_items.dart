// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items_items/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items_items.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items_property/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems {
  /// Description of the array items.
  final String? description;

  /// Nested items definition for arrays of arrays.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsItems?
      items;

  /// Set of property definitions for arrays of objects. See `property` below.
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty>?
      properties;

  /// Data type of the array items.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems({
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
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItemsProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
