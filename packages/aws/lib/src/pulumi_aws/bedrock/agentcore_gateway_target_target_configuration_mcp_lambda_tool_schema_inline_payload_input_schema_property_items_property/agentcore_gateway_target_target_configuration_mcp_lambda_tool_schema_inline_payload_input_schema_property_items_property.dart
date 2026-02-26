// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty {
  /// Description of the property.
  final String? description;

  /// JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with <span pulumi-lang-nodejs="`propertiesJson`" pulumi-lang-dotnet="`PropertiesJson`" pulumi-lang-go="`propertiesJson`" pulumi-lang-python="`properties_json`" pulumi-lang-yaml="`propertiesJson`" pulumi-lang-java="`propertiesJson`">`properties_json`</span>.
  final String? itemsJson;

  /// Name of the property.
  final String name;

  /// JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with <span pulumi-lang-nodejs="`itemsJson`" pulumi-lang-dotnet="`ItemsJson`" pulumi-lang-go="`itemsJson`" pulumi-lang-python="`items_json`" pulumi-lang-yaml="`itemsJson`" pulumi-lang-java="`itemsJson`">`items_json`</span>.
  final String? propertiesJson;

  /// Whether this property is required. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? required;

  /// Data type of the property.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty({
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

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty(
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
