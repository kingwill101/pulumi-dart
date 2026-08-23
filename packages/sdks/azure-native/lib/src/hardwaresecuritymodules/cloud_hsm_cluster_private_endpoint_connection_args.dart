// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_hardwaresecuritymodules_cloud_hsm_cluster_private_endpoint_connection_args_doc}
/// The set of arguments for CloudHsmClusterPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_hardwaresecuritymodules_cloud_hsm_cluster_private_endpoint_connection_args_doc}
class CloudHsmClusterPrivateEndpointConnectionArgs {
  /// The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  final pulumi.Input<String> cloudHsmClusterName;
  /// Name of the private endpoint connection associated with the Cloud HSM Cluster.
  final pulumi.Input<String>? peConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CloudHsmClusterPrivateEndpointConnectionArgs].
  /// [cloudHsmClusterName] The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  /// [peConnectionName] Name of the private endpoint connection associated with the Cloud HSM Cluster.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const CloudHsmClusterPrivateEndpointConnectionArgs({
    required this.cloudHsmClusterName,
    this.peConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHsmClusterName': cloudHsmClusterName,
      'peConnectionName': ?peConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CloudHsmClusterPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return CloudHsmClusterPrivateEndpointConnectionArgs(
      cloudHsmClusterName: pulumi.Input.fromValue(map['cloudHsmClusterName'] as String),
      peConnectionName: (() { final guardedValue = map['peConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
