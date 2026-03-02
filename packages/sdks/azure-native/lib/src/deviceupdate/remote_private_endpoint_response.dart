// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_details_response.dart';
import 'private_link_service_connection_response.dart';
import 'private_link_service_proxy_response.dart';

/// Remote private endpoint details.
class RemotePrivateEndpointResponse {
  /// List of connection details.
  final pulumi.Input<List<ConnectionDetailsResponse>>? connectionDetails;
  /// Remote endpoint resource ID.
  final pulumi.Input<String>? id;
  /// Original resource ID needed by Microsoft.Network.
  final pulumi.Input<String>? immutableResourceId;
  /// Original subscription ID needed by Microsoft.Network.
  final pulumi.Input<String>? immutableSubscriptionId;
  /// ARM location of the remote private endpoint.
  final pulumi.Input<String>? location;
  /// List of private link service connections that need manual approval.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? manualPrivateLinkServiceConnections;
  /// List of automatically approved private link service connections.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? privateLinkServiceConnections;
  /// List of private link service proxies.
  final pulumi.Input<List<PrivateLinkServiceProxyResponse>>? privateLinkServiceProxies;
  /// Virtual network traffic tag.
  final pulumi.Input<String>? vnetTrafficTag;

  /// Creates a new [RemotePrivateEndpointResponse].
  /// [connectionDetails] List of connection details.
  /// [id] Remote endpoint resource ID.
  /// [immutableResourceId] Original resource ID needed by Microsoft.Network.
  /// [immutableSubscriptionId] Original subscription ID needed by Microsoft.Network.
  /// [location] ARM location of the remote private endpoint.
  /// [manualPrivateLinkServiceConnections] List of private link service connections that need manual approval.
  /// [privateLinkServiceConnections] List of automatically approved private link service connections.
  /// [privateLinkServiceProxies] List of private link service proxies.
  /// [vnetTrafficTag] Virtual network traffic tag.
  RemotePrivateEndpointResponse({
    this.connectionDetails,
    this.id,
    this.immutableResourceId,
    this.immutableSubscriptionId,
    this.location,
    this.manualPrivateLinkServiceConnections,
    this.privateLinkServiceConnections,
    this.privateLinkServiceProxies,
    this.vnetTrafficTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDetails': ?pulumi.Input.mapOptionalInputValue<List<ConnectionDetailsResponse>, List<Map<String, dynamic>>>(connectionDetails, (value) => pulumi.Input.encodeList<ConnectionDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'immutableResourceId': ?immutableResourceId,
      'immutableSubscriptionId': ?immutableSubscriptionId,
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(privateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceProxies': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceProxyResponse>, List<Map<String, dynamic>>>(privateLinkServiceProxies, (value) => pulumi.Input.encodeList<PrivateLinkServiceProxyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vnetTrafficTag': ?vnetTrafficTag,
    };
  }

  factory RemotePrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointResponse(
      connectionDetails: map['connectionDetails'] == null ? null : (pulumi.Input.decodeList<ConnectionDetailsResponse>(map['connectionDetails']!, (value) => ConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      immutableResourceId: map['immutableResourceId'] == null ? null : (map['immutableResourceId']! as String).input(),
      immutableSubscriptionId: map['immutableSubscriptionId'] == null ? null : (map['immutableSubscriptionId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['manualPrivateLinkServiceConnections']!, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['privateLinkServiceConnections']!, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkServiceProxies: map['privateLinkServiceProxies'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceProxyResponse>(map['privateLinkServiceProxies']!, (value) => PrivateLinkServiceProxyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vnetTrafficTag: map['vnetTrafficTag'] == null ? null : (map['vnetTrafficTag']! as String).input(),
    );
  }
}

