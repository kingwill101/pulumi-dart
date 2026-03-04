// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_details.dart';
import 'private_link_service_connection.dart';
import 'private_link_service_proxy.dart';

/// Represent remote private endpoint information for the private endpoint connection proxy.
class RemotePrivateEndpoint {
  /// Gets or sets the list of Connection Details. This is the connection details for private endpoint.
  final pulumi.Input<List<ConnectionDetails>>? connectionDetails;

  /// Gets or sets private link service proxy id.
  final pulumi.Input<String> id;

  /// Gets or sets the list of Manual Private Link Service Connections and gets populated for Manual approval flow.
  final pulumi.Input<List<PrivateLinkServiceConnection>>?
  manualPrivateLinkServiceConnections;

  /// Gets or sets the list of Private Link Service Connections and gets populated for Auto approval flow.
  final pulumi.Input<List<PrivateLinkServiceConnection>>?
  privateLinkServiceConnections;

  /// Gets or sets the list of private link service proxies.
  final pulumi.Input<List<PrivateLinkServiceProxy>>? privateLinkServiceProxies;

  /// Creates a new [RemotePrivateEndpoint].
  /// [connectionDetails] Gets or sets the list of Connection Details. This is the connection details for private endpoint.
  /// [id] Gets or sets private link service proxy id.
  /// [manualPrivateLinkServiceConnections] Gets or sets the list of Manual Private Link Service Connections and gets populated for Manual approval flow.
  /// [privateLinkServiceConnections] Gets or sets the list of Private Link Service Connections and gets populated for Auto approval flow.
  /// [privateLinkServiceProxies] Gets or sets the list of private link service proxies.
  RemotePrivateEndpoint({
    this.connectionDetails,
    required this.id,
    this.manualPrivateLinkServiceConnections,
    this.privateLinkServiceConnections,
    this.privateLinkServiceProxies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectionDetails>,
            List<Map<String, dynamic>>
          >(
            connectionDetails,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectionDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'manualPrivateLinkServiceConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateLinkServiceConnection>,
            List<Map<String, dynamic>>
          >(
            manualPrivateLinkServiceConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateLinkServiceConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateLinkServiceConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateLinkServiceConnection>,
            List<Map<String, dynamic>>
          >(
            privateLinkServiceConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateLinkServiceConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateLinkServiceProxies':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateLinkServiceProxy>,
            List<Map<String, dynamic>>
          >(
            privateLinkServiceProxies,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateLinkServiceProxy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RemotePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpoint(
      connectionDetails: (() {
        final guardedValue = map['connectionDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectionDetails>(
            guardedValue,
            (value) => ConnectionDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      manualPrivateLinkServiceConnections: (() {
        final guardedValue = map['manualPrivateLinkServiceConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateLinkServiceConnection>(
            guardedValue,
            (value) => PrivateLinkServiceConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privateLinkServiceConnections: (() {
        final guardedValue = map['privateLinkServiceConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateLinkServiceConnection>(
            guardedValue,
            (value) => PrivateLinkServiceConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privateLinkServiceProxies: (() {
        final guardedValue = map['privateLinkServiceProxies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateLinkServiceProxy>(
            guardedValue,
            (value) => PrivateLinkServiceProxy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
