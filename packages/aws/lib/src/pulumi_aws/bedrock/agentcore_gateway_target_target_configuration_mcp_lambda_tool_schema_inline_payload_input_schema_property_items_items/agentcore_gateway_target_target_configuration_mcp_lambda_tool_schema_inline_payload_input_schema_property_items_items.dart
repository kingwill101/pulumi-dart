// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems {
  /// Description of the array items.
  final String? description;

  /// JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with <span pulumi-lang-nodejs="`propertiesJson`" pulumi-lang-dotnet="`PropertiesJson`" pulumi-lang-go="`propertiesJson`" pulumi-lang-python="`properties_json`" pulumi-lang-yaml="`propertiesJson`" pulumi-lang-java="`propertiesJson`">`properties_json`</span>.
  final String? itemsJson;

  /// JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with <span pulumi-lang-nodejs="`itemsJson`" pulumi-lang-dotnet="`ItemsJson`" pulumi-lang-go="`itemsJson`" pulumi-lang-python="`items_json`" pulumi-lang-yaml="`itemsJson`" pulumi-lang-java="`itemsJson`">`items_json`</span>.
  final String? propertiesJson;

  /// Data type of the array items.
  final String type;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
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
    final propertiesJsonValue = propertiesJson;
    if (propertiesJsonValue != null) {
      map['propertiesJson'] = propertiesJsonValue;
    }
    map['type'] = type;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsItems(
      description:
          map['description'] == null ? null : map['description'] as String,
      itemsJson: map['itemsJson'] == null ? null : map['itemsJson'] as String,
      propertiesJson: map['propertiesJson'] == null
          ? null
          : map['propertiesJson'] as String,
      type: map['type'] as String,
    );
  }
}
