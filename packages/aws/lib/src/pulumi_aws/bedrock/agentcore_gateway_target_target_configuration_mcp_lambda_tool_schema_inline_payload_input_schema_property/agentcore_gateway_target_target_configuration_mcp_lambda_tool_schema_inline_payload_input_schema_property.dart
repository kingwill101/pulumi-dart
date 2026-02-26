// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_items/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_items.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_property/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema_property_property.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty {
  /// Description of the property.
  final String? description;

  /// Items definition for array properties. See <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> above.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems?
      items;

  /// Name of the property.
  final String name;

  /// Set of nested property definitions for object properties.
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty>?
      properties;

  /// Whether this property is required. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? required;

  /// Data type of the property.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty({
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
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaProperty(
      description:
          map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItems
              .fromMap((map['items'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      properties: map['properties'] == null
          ? null
          : Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty>(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
