// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty {
  /// Description of the property.
  final String? description;

  /// JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  final String? itemsJson;

  /// Name of the property.
  final String name;

  /// JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  final String? propertiesJson;

  /// Whether this property is required. Defaults to `false`.
  final bool? required;

  /// Data type of the property.
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty].
  /// [description] Description of the property.
  /// [itemsJson] JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  /// [name] Name of the property.
  /// [propertiesJson] JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  /// [required] Whether this property is required. Defaults to `false`.
  /// [type] Data type of the property.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty({
    this.description,
    this.itemsJson,
    required this.name,
    this.propertiesJson,
    this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final itemsJsonValue = itemsJson;
    if (itemsJsonValue != null) {
      map['itemsJson'] = itemsJsonValue;
    }
    map['name'] = name;
    final propertiesJsonValue = propertiesJson;
    if (propertiesJsonValue != null) {
      map['propertiesJson'] = propertiesJsonValue;
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsProperty(
      description:
          map['description'] == null ? null : map['description'] as String,
      itemsJson: map['itemsJson'] == null ? null : map['itemsJson'] as String,
      name: map['name'] as String,
      propertiesJson: map['propertiesJson'] == null
          ? null
          : map['propertiesJson'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] as String,
    );
  }
}
