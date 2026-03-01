// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_items.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema_property_property.dart';

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
    AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty
  >?
  properties;

  /// Whether this property is required. Defaults to `false`.
  final bool? required;

  /// Data type of the property.
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty].
  /// [description] Description of the property.
  /// [items] Items definition for array properties. See `items` above.
  /// [name] Name of the property.
  /// [properties] Set of nested property definitions for object properties.
  /// [required] Whether this property is required. Defaults to `false`.
  /// [type] Data type of the property.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty({
    this.description,
    this.items,
    required this.name,
    this.properties,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'items': ?items == null ? null : items!.toMap(),
      'name': name,
      'properties': ?properties == null
          ? null
          : pulumi.Input.encodeList<
              AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty,
              Map<String, dynamic>
            >(properties!, (value) => value.toMap()),
      'required': ?required,
      'type': type,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaProperty(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      items: map['items'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyItems.fromMap(
              (map['items'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
              AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty
            >(
              map['properties'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
