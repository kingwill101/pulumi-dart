// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_details_response.dart';
import 'private_link_service_connection_response.dart';
import 'private_link_service_proxy_response.dart';

/// Remote private endpoint details.
class RemotePrivateEndpointResponse {
  /// List of connection details.
  final pulumi.Input<List<ConnectionDetailsResponse>?>? connectionDetails;
  /// Remote endpoint resource ID.
  final pulumi.Input<String?>? id;
  /// Original resource ID needed by Microsoft.Network.
  final pulumi.Input<String?>? immutableResourceId;
  /// Original subscription ID needed by Microsoft.Network.
  final pulumi.Input<String?>? immutableSubscriptionId;
  /// ARM location of the remote private endpoint.
  final pulumi.Input<String?>? location;
  /// List of private link service connections that need manual approval.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>?>? manualPrivateLinkServiceConnections;
  /// List of automatically approved private link service connections.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>?>? privateLinkServiceConnections;
  /// List of private link service proxies.
  final pulumi.Input<List<PrivateLinkServiceProxyResponse>?>? privateLinkServiceProxies;
  /// Virtual network traffic tag.
  final pulumi.Input<String?>? vnetTrafficTag;

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
  const RemotePrivateEndpointResponse({
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
      connectionDetails: (() { final guardedValue = map['connectionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionDetailsResponse>(guardedValue, (value) => ConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutableResourceId: (() { final guardedValue = map['immutableResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutableSubscriptionId: (() { final guardedValue = map['immutableSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceConnections: (() { final guardedValue = map['privateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceProxies: (() { final guardedValue = map['privateLinkServiceProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceProxyResponse>(guardedValue, (value) => PrivateLinkServiceProxyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vnetTrafficTag: (() { final guardedValue = map['vnetTrafficTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
