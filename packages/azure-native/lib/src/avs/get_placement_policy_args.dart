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
  GetPlacementPolicyArgs({
    required String clusterName,
    required String placementPolicyName,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      placementPolicyName = pulumi.Input.asInput<String>(placementPolicyName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clusterName: map['clusterName'] as String,
      placementPolicyName: map['placementPolicyName'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

