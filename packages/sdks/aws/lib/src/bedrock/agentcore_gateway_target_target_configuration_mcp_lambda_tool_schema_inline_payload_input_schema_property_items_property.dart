// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty {
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

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty].
  /// [description] Description of the property.
  /// [itemsJson] JSON-encoded schema definition for array items. Used for complex nested structures. Cannot be used with `properties_json`.
  /// [name] Name of the property.
  /// [propertiesJson] JSON-encoded schema definition for object properties. Used for complex nested structures. Cannot be used with `items_json`.
  /// [required] Whether this property is required. Defaults to `false`.
  /// [type] Data type of the property.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty({
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

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyItemsProperty(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      itemsJson: (() {
        final guardedValue = map['itemsJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      propertiesJson: (() {
        final guardedValue = map['propertiesJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      required: (() {
        final guardedValue = map['required'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
