// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_args_doc}
/// Arguments for getCloudHsmCluster.
/// {@endtemplate}
/// {@macro pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_args_doc}
class GetCloudHsmClusterArgs {
  /// The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  final pulumi.Input<String> cloudHsmClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudHsmClusterArgs].
  /// [cloudHsmClusterName] The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudHsmClusterArgs({
    required pulumi.Output<String> cloudHsmClusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cloudHsmClusterName = pulumi.Input.asInput<String>(cloudHsmClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHsmClusterName': cloudHsmClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudHsmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudHsmClusterArgs(
      cloudHsmClusterName: pulumi.Output.create<String>(map['cloudHsmClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

