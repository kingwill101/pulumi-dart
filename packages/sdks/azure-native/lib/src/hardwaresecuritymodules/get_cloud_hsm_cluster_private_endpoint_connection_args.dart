// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_private_endpoint_connection_args_doc}
/// Arguments for getCloudHsmClusterPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_private_endpoint_connection_args_doc}
class GetCloudHsmClusterPrivateEndpointConnectionArgs {
  /// The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  final pulumi.Input<String> cloudHsmClusterName;

  /// Name of the private endpoint connection associated with the Cloud HSM Cluster.
  final pulumi.Input<String> peConnectionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudHsmClusterPrivateEndpointConnectionArgs].
  /// [cloudHsmClusterName] The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  /// [peConnectionName] Name of the private endpoint connection associated with the Cloud HSM Cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudHsmClusterPrivateEndpointConnectionArgs({
    required this.cloudHsmClusterName,
    required this.peConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHsmClusterName': cloudHsmClusterName,
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudHsmClusterPrivateEndpointConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudHsmClusterPrivateEndpointConnectionArgs(
      cloudHsmClusterName: pulumi.Input.fromValue(
        map['cloudHsmClusterName'] as String,
      ),
      peConnectionName: pulumi.Input.fromValue(
        map['peConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
