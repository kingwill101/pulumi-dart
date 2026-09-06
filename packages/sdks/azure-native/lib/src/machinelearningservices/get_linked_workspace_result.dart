// ignore_for_file: unused_element, unnecessary_cast

import 'linked_workspace_props_response.dart';

/// Result data returned by getLinkedWorkspace.
class GetLinkedWorkspaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ResourceId of the link of the linked workspace.
  final String? id;
  /// Friendly name of the linked workspace.
  final String? name;
  /// LinkedWorkspace specific properties.
  final LinkedWorkspacePropsResponse? properties;
  /// Resource type of linked workspace.
  final String? type;

  /// Creates a new [GetLinkedWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ResourceId of the link of the linked workspace.
  /// [name] Friendly name of the linked workspace.
  /// [properties] LinkedWorkspace specific properties.
  /// [type] Resource type of linked workspace.
  const GetLinkedWorkspaceResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetLinkedWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedWorkspaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return LinkedWorkspacePropsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
