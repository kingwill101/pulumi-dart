// ignore_for_file: unused_element, unnecessary_cast

import 'resource_management_private_link_endpoint_connections_response.dart';

/// Result data returned by getResourceManagementPrivateLink.
class GetResourceManagementPrivateLinkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The rmplResourceID.
  final String? id;
  /// the region of the rmpl
  final String? location;
  /// The rmpl Name.
  final String? name;
  final ResourceManagementPrivateLinkEndpointConnectionsResponse? properties;
  /// The operation type.
  final String? type;

  /// Creates a new [GetResourceManagementPrivateLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The rmplResourceID.
  /// [location] the region of the rmpl
  /// [name] The rmpl Name.
  /// [properties] Optional.
  /// [type] The operation type.
  const GetResourceManagementPrivateLinkResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetResourceManagementPrivateLinkResult.fromMap(Map<String, dynamic> map) {
    return GetResourceManagementPrivateLinkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ResourceManagementPrivateLinkEndpointConnectionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
