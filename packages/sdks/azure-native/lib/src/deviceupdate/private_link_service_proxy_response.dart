// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'private_link_service_proxy_response_remote_private_endpoint_connection.dart';

/// Private link service proxy details.
class PrivateLinkServiceProxyResponse {
  /// Group connectivity information.
  final pulumi.Input<List<GroupConnectivityInformationResponse>?>? groupConnectivityInformation;
  /// NRP resource ID.
  final pulumi.Input<String?>? id;
  /// Remote private endpoint connection details.
  final pulumi.Input<PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection?>? remotePrivateEndpointConnection;
  /// Remote private link service connection state
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse?>? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxyResponse].
  /// [groupConnectivityInformation] Group connectivity information.
  /// [id] NRP resource ID.
  /// [remotePrivateEndpointConnection] Remote private endpoint connection details.
  /// [remotePrivateLinkServiceConnectionState] Remote private link service connection state
  const PrivateLinkServiceProxyResponse({
    this.groupConnectivityInformation,
    this.id,
    this.remotePrivateEndpointConnection,
    this.remotePrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivityInformation': ?pulumi.Input.mapOptionalInputValue<List<GroupConnectivityInformationResponse>, List<Map<String, dynamic>>>(groupConnectivityInformation, (value) => pulumi.Input.encodeList<GroupConnectivityInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'remotePrivateEndpointConnection': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection, Map<String, dynamic>>(remotePrivateEndpointConnection, (value) => value.toMap()),
      'remotePrivateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(remotePrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceProxyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxyResponse(
      groupConnectivityInformation: (() { final guardedValue = map['groupConnectivityInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupConnectivityInformationResponse>(guardedValue, (value) => GroupConnectivityInformationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remotePrivateEndpointConnection: (() { final guardedValue = map['remotePrivateEndpointConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remotePrivateLinkServiceConnectionState: (() { final guardedValue = map['remotePrivateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
