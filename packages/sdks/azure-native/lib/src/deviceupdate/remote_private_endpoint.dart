// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection.dart';
import 'private_link_service_proxy.dart';

/// Remote private endpoint details.
class RemotePrivateEndpoint {
  /// Remote endpoint resource ID.
  final pulumi.Input<String>? id;
  /// Original resource ID needed by Microsoft.Network.
  final pulumi.Input<String>? immutableResourceId;
  /// Original subscription ID needed by Microsoft.Network.
  final pulumi.Input<String>? immutableSubscriptionId;
  /// ARM location of the remote private endpoint.
  final pulumi.Input<String>? location;
  /// List of private link service connections that need manual approval.
  final pulumi.Input<List<PrivateLinkServiceConnection>>? manualPrivateLinkServiceConnections;
  /// List of automatically approved private link service connections.
  final pulumi.Input<List<PrivateLinkServiceConnection>>? privateLinkServiceConnections;
  /// List of private link service proxies.
  final pulumi.Input<List<PrivateLinkServiceProxy>>? privateLinkServiceProxies;
  /// Virtual network traffic tag.
  final pulumi.Input<String>? vnetTrafficTag;

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
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnection>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnection>, List<Map<String, dynamic>>>(privateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceProxies': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceProxy>, List<Map<String, dynamic>>>(privateLinkServiceProxies, (value) => pulumi.Input.encodeList<PrivateLinkServiceProxy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vnetTrafficTag': ?vnetTrafficTag,
    };
  }

  factory RemotePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpoint(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      immutableResourceId: map['immutableResourceId'] == null ? null : (map['immutableResourceId']! as String).input(),
      immutableSubscriptionId: map['immutableSubscriptionId'] == null ? null : (map['immutableSubscriptionId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['manualPrivateLinkServiceConnections']!, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['privateLinkServiceConnections']!, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkServiceProxies: map['privateLinkServiceProxies'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceProxy>(map['privateLinkServiceProxies']!, (value) => PrivateLinkServiceProxy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vnetTrafficTag: map['vnetTrafficTag'] == null ? null : (map['vnetTrafficTag']! as String).input(),
    );
  }
}

