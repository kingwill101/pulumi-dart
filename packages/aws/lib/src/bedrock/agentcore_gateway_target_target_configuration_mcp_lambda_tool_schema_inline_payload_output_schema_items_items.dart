// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems {
  /// Description of the array items.
  final String? description;

  /// JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  final String? itemsJson;

  /// JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  final String? propertiesJson;

  /// Data type of the array items.
  final String type;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems].
  /// [description] Description of the array items.
  /// [itemsJson] JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  /// [propertiesJson] JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  /// [type] Data type of the array items.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems({
    this.description,
    this.itemsJson,
    this.propertiesJson,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'itemsJson': ?itemsJson,
      'propertiesJson': ?propertiesJson,
      'type': type,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaItemsItems(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      itemsJson: map['itemsJson'] == null ? null : map['itemsJson'] as String,
      propertiesJson: map['propertiesJson'] == null
          ? null
          : map['propertiesJson'] as String,
      type: map['type'] as String,
    );
  }
}
