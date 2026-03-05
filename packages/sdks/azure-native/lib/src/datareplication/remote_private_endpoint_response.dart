// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_details_response.dart';
import 'private_link_service_connection_response.dart';
import 'private_link_service_proxy_response.dart';

/// Represent remote private endpoint information for the private endpoint connection proxy.
class RemotePrivateEndpointResponse {
  /// Gets or sets the list of Connection Details. This is the connection details for private endpoint.
  final pulumi.Input<List<ConnectionDetailsResponse>>? connectionDetails;
  /// Gets or sets private link service proxy id.
  final pulumi.Input<String> id;
  /// Gets or sets the list of Manual Private Link Service Connections and gets populated for Manual approval flow.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? manualPrivateLinkServiceConnections;
  /// Gets or sets the list of Private Link Service Connections and gets populated for Auto approval flow.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? privateLinkServiceConnections;
  /// Gets or sets the list of private link service proxies.
  final pulumi.Input<List<PrivateLinkServiceProxyResponse>>? privateLinkServiceProxies;

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
      'connectionDetails': ?pulumi.Input.mapOptionalInputValue<List<ConnectionDetailsResponse>, List<Map<String, dynamic>>>(connectionDetails, (value) => pulumi.Input.encodeList<ConnectionDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(privateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceProxies': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceProxyResponse>, List<Map<String, dynamic>>>(privateLinkServiceProxies, (value) => pulumi.Input.encodeList<PrivateLinkServiceProxyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RemotePrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointResponse(
      connectionDetails: (() { final guardedValue = map['connectionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionDetailsResponse>(guardedValue, (value) => ConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceConnections: (() { final guardedValue = map['privateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceProxies: (() { final guardedValue = map['privateLinkServiceProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceProxyResponse>(guardedValue, (value) => PrivateLinkServiceProxyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

