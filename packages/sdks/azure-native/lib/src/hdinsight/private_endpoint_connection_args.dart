// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_hdinsight_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;

  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// The private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionState>
  privateLinkServiceConnectionState;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [clusterName] The name of the cluster.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [resourceGroupName] The name of the resource group.
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
            PrivateLinkServiceConnectionState,
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
        PrivateLinkServiceConnectionState.fromMap(
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
