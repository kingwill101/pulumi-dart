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
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentType,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mapName,
    required pulumi.Output<String> mapType,
    pulumi.Output<dynamic>? metadata,
    pulumi.Output<IntegrationAccountMapPropertiesParametersSchema>? parametersSchema,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
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
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mapName: map['mapName'] == null ? null : pulumi.Output.create<String>(map['mapName'] as String),
      mapType: pulumi.Output.create<String>(map['mapType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<dynamic>(map['metadata']),
      parametersSchema: map['parametersSchema'] == null ? null : pulumi.Output.create<IntegrationAccountMapPropertiesParametersSchema>(IntegrationAccountMapPropertiesParametersSchema.fromMap((map['parametersSchema'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

