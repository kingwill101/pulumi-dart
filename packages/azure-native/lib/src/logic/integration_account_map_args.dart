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
  IntegrationAccountMapArgs({
    String? content,
    String? contentType,
    required String integrationAccountName,
    String? location,
    String? mapName,
    required String mapType,
    dynamic metadata,
    IntegrationAccountMapPropertiesParametersSchema? parametersSchema,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      mapName = pulumi.Input.asOptionalInput<String>(mapName),
      mapType = pulumi.Input.asInput<String>(mapType),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      parametersSchema = pulumi.Input.asOptionalInput<IntegrationAccountMapPropertiesParametersSchema>(parametersSchema),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      content: map['content'] == null ? null : map['content'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mapName: map['mapName'] == null ? null : map['mapName'] as String,
      mapType: map['mapType'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      parametersSchema: map['parametersSchema'] == null ? null : IntegrationAccountMapPropertiesParametersSchema.fromMap((map['parametersSchema'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

