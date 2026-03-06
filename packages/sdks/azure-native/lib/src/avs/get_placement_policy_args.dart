// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_placement_policy_args_doc}
/// Arguments for getPlacementPolicy.
/// {@endtemplate}
/// {@macro pulumi_avs_get_placement_policy_args_doc}
class GetPlacementPolicyArgs {
  /// Name of the cluster
  final pulumi.Input<String> clusterName;
  /// Name of the placement policy.
  final pulumi.Input<String> placementPolicyName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPlacementPolicyArgs].
  /// [clusterName] Name of the cluster
  /// [placementPolicyName] Name of the placement policy.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPlacementPolicyArgs({
    required this.clusterName,
    required this.placementPolicyName,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'placementPolicyName': placementPolicyName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlacementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementPolicyArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      placementPolicyName: pulumi.Input.fromValue(map['placementPolicyName'] as String),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

