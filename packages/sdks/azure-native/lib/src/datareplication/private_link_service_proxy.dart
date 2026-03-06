// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information.dart';
import 'private_link_service_connection_state.dart';
import 'remote_private_endpoint_connection.dart';

/// Represents NRP private link service proxy.
class PrivateLinkServiceProxy {
  /// Gets or sets group connectivity information.
  final pulumi.Input<List<GroupConnectivityInformation>>? groupConnectivityInformation;
  /// Gets or sets private link service proxy id.
  final pulumi.Input<String>? id;
  /// Represent remote private endpoint connection.
  final pulumi.Input<RemotePrivateEndpointConnection>? remotePrivateEndpointConnection;
  /// Represents Private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionState>? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxy].
  /// [groupConnectivityInformation] Gets or sets group connectivity information.
  /// [id] Gets or sets private link service proxy id.
  /// [remotePrivateEndpointConnection] Represent remote private endpoint connection.
  /// [remotePrivateLinkServiceConnectionState] Represents Private link service connection state.
  const PrivateLinkServiceProxy({
    this.groupConnectivityInformation,
    this.id,
    this.remotePrivateEndpointConnection,
    this.remotePrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivityInformation': ?pulumi.Input.mapOptionalInputValue<List<GroupConnectivityInformation>, List<Map<String, dynamic>>>(groupConnectivityInformation, (value) => pulumi.Input.encodeList<GroupConnectivityInformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'remotePrivateEndpointConnection': ?pulumi.Input.mapOptionalInputValue<RemotePrivateEndpointConnection, Map<String, dynamic>>(remotePrivateEndpointConnection, (value) => value.toMap()),
      'remotePrivateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(remotePrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceProxy.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxy(
      groupConnectivityInformation: (() { final guardedValue = map['groupConnectivityInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupConnectivityInformation>(guardedValue, (value) => GroupConnectivityInformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remotePrivateEndpointConnection: (() { final guardedValue = map['remotePrivateEndpointConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemotePrivateEndpointConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remotePrivateLinkServiceConnectionState: (() { final guardedValue = map['remotePrivateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

