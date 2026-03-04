// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state_property.dart';

/// {@template pulumi_kusto_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;

  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty>
  privateLinkServiceConnectionState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required this.clusterName,
    this.privateEndpointConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState':
          pulumi.Input.mapInputValue<
            PrivateLinkServiceConnectionStateProperty,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      privateEndpointConnectionName: (() {
        final guardedValue = map['privateEndpointConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(
        PrivateLinkServiceConnectionStateProperty.fromMap(
          (map['privateLinkServiceConnectionState']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
