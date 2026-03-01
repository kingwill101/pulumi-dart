// ignore_for_file: unused_element, unnecessary_cast

import 'resource_management_private_link_endpoint_connections_response.dart';

/// Result data returned by getResourceManagementPrivateLink.
class GetResourceManagementPrivateLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The rmplResourceID.
  final String id;
  /// the region of the rmpl
  final String? location;
  /// The rmpl Name.
  final String name;
  final ResourceManagementPrivateLinkEndpointConnectionsResponse properties;
  /// The operation type.
  final String type;

  /// Creates a new [GetResourceManagementPrivateLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The rmplResourceID.
  /// [location] the region of the rmpl
  /// [name] The rmpl Name.
  /// [properties] Required.
  /// [type] The operation type.
  GetResourceManagementPrivateLinkResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetResourceManagementPrivateLinkResult.fromMap(Map<String, dynamic> map) {
    return GetResourceManagementPrivateLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: ResourceManagementPrivateLinkEndpointConnectionsResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

