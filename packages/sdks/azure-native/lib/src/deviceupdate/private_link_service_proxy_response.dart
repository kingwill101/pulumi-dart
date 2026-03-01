// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'private_link_service_proxy_response_remote_private_endpoint_connection.dart';

/// Private link service proxy details.
class PrivateLinkServiceProxyResponse {
  /// Group connectivity information.
  final List<GroupConnectivityInformationResponse>? groupConnectivityInformation;
  /// NRP resource ID.
  final String? id;
  /// Remote private endpoint connection details.
  final PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection? remotePrivateEndpointConnection;
  /// Remote private link service connection state
  final PrivateLinkServiceConnectionStateResponse? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxyResponse].
  /// [groupConnectivityInformation] Group connectivity information.
  /// [id] NRP resource ID.
  /// [remotePrivateEndpointConnection] Remote private endpoint connection details.
  /// [remotePrivateLinkServiceConnectionState] Remote private link service connection state
  PrivateLinkServiceProxyResponse({
    this.groupConnectivityInformation,
    this.id,
    this.remotePrivateEndpointConnection,
    this.remotePrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivityInformation': ?groupConnectivityInformation == null ? null : pulumi.Input.encodeList<GroupConnectivityInformationResponse, Map<String, dynamic>>(groupConnectivityInformation!, (value) => value.toMap()),
      'id': ?id,
      'remotePrivateEndpointConnection': ?remotePrivateEndpointConnection == null ? null : remotePrivateEndpointConnection!.toMap(),
      'remotePrivateLinkServiceConnectionState': ?remotePrivateLinkServiceConnectionState == null ? null : remotePrivateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateLinkServiceProxyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxyResponse(
      groupConnectivityInformation: map['groupConnectivityInformation'] == null ? null : pulumi.Input.decodeList<GroupConnectivityInformationResponse>(map['groupConnectivityInformation'], (value) => GroupConnectivityInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      remotePrivateEndpointConnection: map['remotePrivateEndpointConnection'] == null ? null : PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection.fromMap((map['remotePrivateEndpointConnection'] as Map).cast<String, dynamic>()),
      remotePrivateLinkServiceConnectionState: map['remotePrivateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['remotePrivateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

