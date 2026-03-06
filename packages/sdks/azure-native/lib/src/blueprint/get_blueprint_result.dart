// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_status_response.dart';
import 'parameter_definition_response.dart';
import 'resource_group_definition_response.dart';

/// Result data returned by getBlueprint.
class GetBlueprintResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Layout view of the blueprint definition for UI reference.
  final dynamic layout;
  /// Name of this resource.
  final String name;
  /// Parameters required by this blueprint definition.
  final Map<String, ParameterDefinitionResponse>? parameters;
  /// Resource group placeholders defined by this blueprint definition.
  final Map<String, ResourceGroupDefinitionResponse>? resourceGroups;
  /// Status of the blueprint. This field is readonly.
  final BlueprintStatusResponse status;
  /// The scope where this blueprint definition can be assigned.
  final String targetScope;
  /// Type of this resource.
  final String type;
  /// Published versions of this blueprint definition.
  final dynamic versions;

  /// Creates a new [GetBlueprintResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [layout] Layout view of the blueprint definition for UI reference.
  /// [name] Name of this resource.
  /// [parameters] Parameters required by this blueprint definition.
  /// [resourceGroups] Resource group placeholders defined by this blueprint definition.
  /// [status] Status of the blueprint. This field is readonly.
  /// [targetScope] The scope where this blueprint definition can be assigned.
  /// [type] Type of this resource.
  /// [versions] Published versions of this blueprint definition.
  const GetBlueprintResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.layout,
    required this.name,
    this.parameters,
    this.resourceGroups,
    required this.status,
    required this.targetScope,
    required this.type,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'layout': layout,
      'name': name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ParameterDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroups': ?(() { final guardedValue = resourceGroups; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ResourceGroupDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': status.toMap(),
      'targetScope': targetScope,
      'type': type,
      'versions': ?versions,
    };
  }

  factory GetBlueprintResult.fromMap(Map<String, dynamic> map) {
    return GetBlueprintResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      layout: map['layout'],
      name: map['name'] as String,
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionResponse>(guardedValue, (value) => ParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ResourceGroupDefinitionResponse>(guardedValue, (value) => ResourceGroupDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: BlueprintStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      targetScope: map['targetScope'] as String,
      type: map['type'] as String,
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return guardedValue; })(),
    );
  }
}

