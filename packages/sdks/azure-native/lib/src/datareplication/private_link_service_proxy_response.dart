// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'remote_private_endpoint_connection_response.dart';

/// Represents NRP private link service proxy.
class PrivateLinkServiceProxyResponse {
  /// Gets or sets group connectivity information.
  final List<GroupConnectivityInformationResponse>? groupConnectivityInformation;
  /// Gets or sets private link service proxy id.
  final String? id;
  /// Represent remote private endpoint connection.
  final RemotePrivateEndpointConnectionResponse? remotePrivateEndpointConnection;
  /// Represents Private link service connection state.
  final PrivateLinkServiceConnectionStateResponse? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxyResponse].
  /// [groupConnectivityInformation] Gets or sets group connectivity information.
  /// [id] Gets or sets private link service proxy id.
  /// [remotePrivateEndpointConnection] Represent remote private endpoint connection.
  /// [remotePrivateLinkServiceConnectionState] Represents Private link service connection state.
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
      remotePrivateEndpointConnection: map['remotePrivateEndpointConnection'] == null ? null : RemotePrivateEndpointConnectionResponse.fromMap((map['remotePrivateEndpointConnection'] as Map).cast<String, dynamic>()),
      remotePrivateLinkServiceConnectionState: map['remotePrivateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['remotePrivateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

