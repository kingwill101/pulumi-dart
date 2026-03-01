// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_details_response.dart';
import 'private_link_service_connection_response.dart';
import 'private_link_service_proxy_response.dart';

/// Represent remote private endpoint information for the private endpoint connection proxy.
class RemotePrivateEndpointResponse {
  /// Gets or sets the list of Connection Details. This is the connection details for private endpoint.
  final List<ConnectionDetailsResponse>? connectionDetails;
  /// Gets or sets private link service proxy id.
  final String id;
  /// Gets or sets the list of Manual Private Link Service Connections and gets populated for Manual approval flow.
  final List<PrivateLinkServiceConnectionResponse>? manualPrivateLinkServiceConnections;
  /// Gets or sets the list of Private Link Service Connections and gets populated for Auto approval flow.
  final List<PrivateLinkServiceConnectionResponse>? privateLinkServiceConnections;
  /// Gets or sets the list of private link service proxies.
  final List<PrivateLinkServiceProxyResponse>? privateLinkServiceProxies;

  /// Creates a new [RemotePrivateEndpointResponse].
  /// [connectionDetails] Gets or sets the list of Connection Details. This is the connection details for private endpoint.
  /// [id] Gets or sets private link service proxy id.
  /// [manualPrivateLinkServiceConnections] Gets or sets the list of Manual Private Link Service Connections and gets populated for Manual approval flow.
  /// [privateLinkServiceConnections] Gets or sets the list of Private Link Service Connections and gets populated for Auto approval flow.
  /// [privateLinkServiceProxies] Gets or sets the list of private link service proxies.
  RemotePrivateEndpointResponse({
    this.connectionDetails,
    required this.id,
    this.manualPrivateLinkServiceConnections,
    this.privateLinkServiceConnections,
    this.privateLinkServiceProxies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDetails': ?connectionDetails == null ? null : pulumi.Input.encodeList<ConnectionDetailsResponse, Map<String, dynamic>>(connectionDetails!, (value) => value.toMap()),
      'id': id,
      'manualPrivateLinkServiceConnections': ?manualPrivateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(manualPrivateLinkServiceConnections!, (value) => value.toMap()),
      'privateLinkServiceConnections': ?privateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(privateLinkServiceConnections!, (value) => value.toMap()),
      'privateLinkServiceProxies': ?privateLinkServiceProxies == null ? null : pulumi.Input.encodeList<PrivateLinkServiceProxyResponse, Map<String, dynamic>>(privateLinkServiceProxies!, (value) => value.toMap()),
    };
  }

  factory RemotePrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointResponse(
      connectionDetails: map['connectionDetails'] == null ? null : pulumi.Input.decodeList<ConnectionDetailsResponse>(map['connectionDetails'], (value) => ConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['manualPrivateLinkServiceConnections'], (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['privateLinkServiceConnections'], (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceProxies: map['privateLinkServiceProxies'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceProxyResponse>(map['privateLinkServiceProxies'], (value) => PrivateLinkServiceProxyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

