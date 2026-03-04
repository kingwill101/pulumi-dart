// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'remote_private_endpoint_connection_response.dart';

/// Represents NRP private link service proxy.
class PrivateLinkServiceProxyResponse {
  /// Gets or sets group connectivity information.
  final pulumi.Input<List<GroupConnectivityInformationResponse>>?
  groupConnectivityInformation;

  /// Gets or sets private link service proxy id.
  final pulumi.Input<String>? id;

  /// Represent remote private endpoint connection.
  final pulumi.Input<RemotePrivateEndpointConnectionResponse>?
  remotePrivateEndpointConnection;

  /// Represents Private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>?
  remotePrivateLinkServiceConnectionState;

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
      'groupConnectivityInformation':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupConnectivityInformationResponse>,
            List<Map<String, dynamic>>
          >(
            groupConnectivityInformation,
            (value) =>
                pulumi.Input.encodeList<
                  GroupConnectivityInformationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'remotePrivateEndpointConnection':
          ?pulumi.Input.mapOptionalInputValue<
            RemotePrivateEndpointConnectionResponse,
            Map<String, dynamic>
          >(remotePrivateEndpointConnection, (value) => value.toMap()),
      'remotePrivateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(remotePrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceProxyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxyResponse(
      groupConnectivityInformation: (() {
        final guardedValue = map['groupConnectivityInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupConnectivityInformationResponse>(
            guardedValue,
            (value) => GroupConnectivityInformationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remotePrivateEndpointConnection: (() {
        final guardedValue = map['remotePrivateEndpointConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RemotePrivateEndpointConnectionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      remotePrivateLinkServiceConnectionState: (() {
        final guardedValue = map['remotePrivateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
