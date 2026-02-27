// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_items_items/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_items_items.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_items_property/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_items_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems {
  /// Description of the array items.
  final String? description;

  /// Nested items definition for arrays of arrays.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsItems?
      items;

  /// Set of property definitions for arrays of objects. See `property` below.
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty>?
      properties;

  /// Data type of the array items.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems({
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
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItems(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
