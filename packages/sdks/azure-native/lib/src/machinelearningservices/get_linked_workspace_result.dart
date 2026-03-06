// ignore_for_file: unused_element, unnecessary_cast

import 'linked_workspace_props_response.dart';

/// Result data returned by getLinkedWorkspace.
class GetLinkedWorkspaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ResourceId of the link of the linked workspace.
  final String id;
  /// Friendly name of the linked workspace.
  final String name;
  /// LinkedWorkspace specific properties.
  final LinkedWorkspacePropsResponse properties;
  /// Resource type of linked workspace.
  final String type;

  /// Creates a new [GetLinkedWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ResourceId of the link of the linked workspace.
  /// [name] Friendly name of the linked workspace.
  /// [properties] LinkedWorkspace specific properties.
  /// [type] Resource type of linked workspace.
  const GetLinkedWorkspaceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetLinkedWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedWorkspaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: LinkedWorkspacePropsResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

