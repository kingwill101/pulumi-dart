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
  const RemotePrivateEndpoint({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutableResourceId: (() { final guardedValue = map['immutableResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutableSubscriptionId: (() { final guardedValue = map['immutableSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnection>(guardedValue, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceConnections: (() { final guardedValue = map['privateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnection>(guardedValue, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateLinkServiceProxies: (() { final guardedValue = map['privateLinkServiceProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceProxy>(guardedValue, (value) => PrivateLinkServiceProxy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vnetTrafficTag: (() { final guardedValue = map['vnetTrafficTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

