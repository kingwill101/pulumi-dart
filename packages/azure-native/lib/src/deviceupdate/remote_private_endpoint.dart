// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection.dart';
import 'private_link_service_proxy.dart';

/// Remote private endpoint details.
class RemotePrivateEndpoint {
  /// Remote endpoint resource ID.
  final String? id;
  /// Original resource ID needed by Microsoft.Network.
  final String? immutableResourceId;
  /// Original subscription ID needed by Microsoft.Network.
  final String? immutableSubscriptionId;
  /// ARM location of the remote private endpoint.
  final String? location;
  /// List of private link service connections that need manual approval.
  final List<PrivateLinkServiceConnection>? manualPrivateLinkServiceConnections;
  /// List of automatically approved private link service connections.
  final List<PrivateLinkServiceConnection>? privateLinkServiceConnections;
  /// List of private link service proxies.
  final List<PrivateLinkServiceProxy>? privateLinkServiceProxies;
  /// Virtual network traffic tag.
  final String? vnetTrafficTag;

  /// Creates a new [RemotePrivateEndpoint].
  /// [id] Remote endpoint resource ID.
  /// [immutableResourceId] Original resource ID needed by Microsoft.Network.
  /// [immutableSubscriptionId] Original subscription ID needed by Microsoft.Network.
  /// [location] ARM location of the remote private endpoint.
  /// [manualPrivateLinkServiceConnections] List of private link service connections that need manual approval.
  /// [privateLinkServiceConnections] List of automatically approved private link service connections.
  /// [privateLinkServiceProxies] List of private link service proxies.
  /// [vnetTrafficTag] Virtual network traffic tag.
  RemotePrivateEndpoint({
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
      'id': ?id,
      'immutableResourceId': ?immutableResourceId,
      'immutableSubscriptionId': ?immutableSubscriptionId,
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?manualPrivateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(manualPrivateLinkServiceConnections!, (value) => value.toMap()),
      'privateLinkServiceConnections': ?privateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(privateLinkServiceConnections!, (value) => value.toMap()),
      'privateLinkServiceProxies': ?privateLinkServiceProxies == null ? null : pulumi.Input.encodeList<PrivateLinkServiceProxy, Map<String, dynamic>>(privateLinkServiceProxies!, (value) => value.toMap()),
      'vnetTrafficTag': ?vnetTrafficTag,
    };
  }

  factory RemotePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpoint(
      id: map['id'] == null ? null : map['id'] as String,
      immutableResourceId: map['immutableResourceId'] == null ? null : map['immutableResourceId'] as String,
      immutableSubscriptionId: map['immutableSubscriptionId'] == null ? null : map['immutableSubscriptionId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['manualPrivateLinkServiceConnections'], (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['privateLinkServiceConnections'], (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceProxies: map['privateLinkServiceProxies'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceProxy>(map['privateLinkServiceProxies'], (value) => PrivateLinkServiceProxy.fromMap((value as Map).cast<String, dynamic>())),
      vnetTrafficTag: map['vnetTrafficTag'] == null ? null : map['vnetTrafficTag'] as String,
    );
  }
}

