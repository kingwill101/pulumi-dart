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
      content: map['content'] == null ? null : (map['content']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mapName: map['mapName'] == null ? null : (map['mapName']! as String).input(),
      mapType: (map['mapType'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']!).input(),
      parametersSchema: map['parametersSchema'] == null ? null : (IntegrationAccountMapPropertiesParametersSchema.fromMap((map['parametersSchema']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

