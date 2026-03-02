// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty {
  /// Description of the property.
  final pulumi.Input<String>? description;
  /// JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  final pulumi.Input<String>? itemsJson;
  /// Name of the property.
  final pulumi.Input<String> name;
  /// JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  final pulumi.Input<String>? propertiesJson;
  /// Whether this property is required. Defaults to `false`.
  final pulumi.Input<bool>? required;
  /// Data type of the property.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty].
  /// [description] Description of the property.
  /// [itemsJson] JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  /// [name] Name of the property.
  /// [propertiesJson] JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  /// [required] Whether this property is required. Defaults to `false`.
  /// [type] Data type of the property.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty({
    this.description,
    this.itemsJson,
    required this.name,
    this.propertiesJson,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'itemsJson': ?itemsJson,
      'name': name,
      'propertiesJson': ?propertiesJson,
      'required': ?required,
      'type': type,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyProperty(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      itemsJson: map['itemsJson'] == null ? null : ((map['itemsJson'] as String).input()).input(),
      name: (map['name'] as String).input(),
      propertiesJson: map['propertiesJson'] == null ? null : ((map['propertiesJson'] as String).input()).input(),
      required: map['required'] == null ? null : ((map['required'] as bool).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

