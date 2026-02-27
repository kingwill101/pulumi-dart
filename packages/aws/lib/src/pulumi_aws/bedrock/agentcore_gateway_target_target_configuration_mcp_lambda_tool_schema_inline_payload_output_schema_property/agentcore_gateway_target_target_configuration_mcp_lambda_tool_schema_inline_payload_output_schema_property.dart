// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_property/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty {
  /// Description of the property.
  final String? description;

  /// Items definition for array properties. See `items` above.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems?
      items;

  /// Name of the property.
  final String name;

  /// Set of nested property definitions for object properties.
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty>?
      properties;

  /// Whether this property is required. Defaults to `false`.
  final bool? required;

  /// Data type of the property.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty({
    this.description,
    this.items,
    required this.name,
    this.properties,
    this.required,
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
    map['name'] = name;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      properties: map['properties'] == null
          ? null
          : Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
