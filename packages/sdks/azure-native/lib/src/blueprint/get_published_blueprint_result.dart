// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_status_response.dart';
import 'parameter_definition_response.dart';
import 'resource_group_definition_response.dart';

/// Result data returned by getPublishedBlueprint.
class GetPublishedBlueprintResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Name of the published blueprint definition.
  final String? blueprintName;
  /// Version-specific change notes.
  final String? changeNotes;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Name of this resource.
  final String name;
  /// Parameters required by this blueprint definition.
  final Map<String, ParameterDefinitionResponse>? parameters;
  /// Resource group placeholders defined by this blueprint definition.
  final Map<String, ResourceGroupDefinitionResponse>? resourceGroups;
  /// Status of the blueprint. This field is readonly.
  final BlueprintStatusResponse status;
  /// The scope where this blueprint definition can be assigned.
  final String? targetScope;
  /// Type of this resource.
  final String type;

  /// Creates a new [GetPublishedBlueprintResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blueprintName] Name of the published blueprint definition.
  /// [changeNotes] Version-specific change notes.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [name] Name of this resource.
  /// [parameters] Parameters required by this blueprint definition.
  /// [resourceGroups] Resource group placeholders defined by this blueprint definition.
  /// [status] Status of the blueprint. This field is readonly.
  /// [targetScope] The scope where this blueprint definition can be assigned.
  /// [type] Type of this resource.
  GetPublishedBlueprintResult({
    required this.azureApiVersion,
    this.blueprintName,
    this.changeNotes,
    this.description,
    this.displayName,
    required this.id,
    required this.name,
    this.parameters,
    this.resourceGroups,
    required this.status,
    this.targetScope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blueprintName': ?blueprintName,
      'changeNotes': ?changeNotes,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterDefinitionResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'resourceGroups': ?resourceGroups == null ? null : pulumi.Input.encodeMapValues<ResourceGroupDefinitionResponse, Map<String, dynamic>>(resourceGroups!, (value) => value.toMap()),
      'status': status.toMap(),
      'targetScope': ?targetScope,
      'type': type,
    };
  }

  factory GetPublishedBlueprintResult.fromMap(Map<String, dynamic> map) {
    return GetPublishedBlueprintResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blueprintName: map['blueprintName'] == null ? null : map['blueprintName']! as String,
      changeNotes: map['changeNotes'] == null ? null : map['changeNotes']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterDefinitionResponse>(map['parameters']!, (value) => ParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Input.decodeMapValues<ResourceGroupDefinitionResponse>(map['resourceGroups']!, (value) => ResourceGroupDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: BlueprintStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      targetScope: map['targetScope'] == null ? null : map['targetScope']! as String,
      type: map['type'] as String,
    );
  }
}

