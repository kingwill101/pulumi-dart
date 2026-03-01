// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_items_items.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_items_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems {
  /// Description of the array items.
  final String? description;
  /// Nested items definition for arrays of arrays.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems? items;
  /// Set of property definitions for arrays of objects. See `property` below.
  final List<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty>? properties;
  /// Data type of the array items.
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems].
  /// [description] Description of the array items.
  /// [items] Nested items definition for arrays of arrays.
  /// [properties] Set of property definitions for arrays of objects. See `property` below.
  /// [type] Data type of the array items.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems({
    this.description,
    this.items,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'items': ?items == null ? null : items!.toMap(),
      'properties': ?properties == null ? null : pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty, Map<String, dynamic>>(properties!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems(
      description: map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null ? null : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems.fromMap((map['items'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty>(map['properties'], (value) => AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

