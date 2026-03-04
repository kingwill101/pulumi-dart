// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// {@template pulumi_cosmosdb_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Group id of the private endpoint.
  final pulumi.Input<String>? groupId;

  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointProperty>? privateEndpoint;

  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty>?
  privateLinkServiceConnectionState;

  /// Provisioning state of the private endpoint.
  final pulumi.Input<String>? provisioningState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [groupId] Group id of the private endpoint.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [provisioningState] Provisioning state of the private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required this.accountName,
    this.groupId,
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'groupId': ?groupId,
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointProperty,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateProperty,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateEndpointConnectionName: (() {
        final guardedValue = map['privateEndpointConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
