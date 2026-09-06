// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'workspace_response_properties.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// Workspaces resource specific properties.
  final WorkspaceResponseProperties? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

  /// Creates a new [GetWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [id] The resource identifier.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [properties] Workspaces resource specific properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The resource type.
  const GetWorkspaceResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return WorkspaceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
