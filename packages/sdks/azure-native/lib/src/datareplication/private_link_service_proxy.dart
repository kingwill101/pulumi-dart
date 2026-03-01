// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information.dart';
import 'private_link_service_connection_state.dart';
import 'remote_private_endpoint_connection.dart';

/// Represents NRP private link service proxy.
class PrivateLinkServiceProxy {
  /// Gets or sets group connectivity information.
  final List<GroupConnectivityInformation>? groupConnectivityInformation;
  /// Gets or sets private link service proxy id.
  final String? id;
  /// Represent remote private endpoint connection.
  final RemotePrivateEndpointConnection? remotePrivateEndpointConnection;
  /// Represents Private link service connection state.
  final PrivateLinkServiceConnectionState? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxy].
  /// [groupConnectivityInformation] Gets or sets group connectivity information.
  /// [id] Gets or sets private link service proxy id.
  /// [remotePrivateEndpointConnection] Represent remote private endpoint connection.
  /// [remotePrivateLinkServiceConnectionState] Represents Private link service connection state.
  PrivateLinkServiceProxy({
    this.groupConnectivityInformation,
    this.id,
    this.remotePrivateEndpointConnection,
    this.remotePrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivityInformation': ?groupConnectivityInformation == null ? null : pulumi.Input.encodeList<GroupConnectivityInformation, Map<String, dynamic>>(groupConnectivityInformation!, (value) => value.toMap()),
      'id': ?id,
      'remotePrivateEndpointConnection': ?remotePrivateEndpointConnection == null ? null : remotePrivateEndpointConnection!.toMap(),
      'remotePrivateLinkServiceConnectionState': ?remotePrivateLinkServiceConnectionState == null ? null : remotePrivateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateLinkServiceProxy.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxy(
      groupConnectivityInformation: map['groupConnectivityInformation'] == null ? null : pulumi.Input.decodeList<GroupConnectivityInformation>(map['groupConnectivityInformation'], (value) => GroupConnectivityInformation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      remotePrivateEndpointConnection: map['remotePrivateEndpointConnection'] == null ? null : RemotePrivateEndpointConnection.fromMap((map['remotePrivateEndpointConnection'] as Map).cast<String, dynamic>()),
      remotePrivateLinkServiceConnectionState: map['remotePrivateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['remotePrivateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

