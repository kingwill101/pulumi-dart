// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_map_properties_parameters_schema.dart';

/// {@template pulumi_logic_integration_account_map_args_doc}
/// The set of arguments for IntegrationAccountMap.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_map_args_doc}
class IntegrationAccountMapArgs {
  /// The content.
  final pulumi.Input<String>? content;
  /// The content type.
  final pulumi.Input<String>? contentType;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The integration account map name.
  final pulumi.Input<String>? mapName;
  /// The map type.
  final pulumi.Input<String> mapType;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The parameters schema of integration account map.
  final pulumi.Input<IntegrationAccountMapPropertiesParametersSchema>? parametersSchema;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountMapArgs].
  /// [content] The content.
  /// [contentType] The content type.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [mapName] The integration account map name.
  /// [mapType] The map type.
  /// [metadata] The metadata.
  /// [parametersSchema] The parameters schema of integration account map.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  const IntegrationAccountMapArgs({
    this.content,
    this.contentType,
    required this.integrationAccountName,
    this.location,
    this.mapName,
    required this.mapType,
    this.metadata,
    this.parametersSchema,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentType': ?contentType,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'mapName': ?mapName,
      'mapType': mapType,
      'metadata': ?metadata,
      'parametersSchema': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountMapPropertiesParametersSchema, Map<String, dynamic>>(parametersSchema, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountMapArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapArgs(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapName: (() { final guardedValue = map['mapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapType: pulumi.Input.fromValue(map['mapType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parametersSchema: (() { final guardedValue = map['parametersSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationAccountMapPropertiesParametersSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
