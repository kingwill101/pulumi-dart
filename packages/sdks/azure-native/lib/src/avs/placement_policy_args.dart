// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_host_placement_policy_properties.dart';

/// {@template pulumi_avs_placement_policy_args_doc}
/// The set of arguments for PlacementPolicy.
/// {@endtemplate}
/// {@macro pulumi_avs_placement_policy_args_doc}
class PlacementPolicyArgs {
  /// Name of the cluster
  final pulumi.Input<String> clusterName;
  /// Name of the placement policy.
  final pulumi.Input<String>? placementPolicyName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<VmHostPlacementPolicyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PlacementPolicyArgs].
  /// [clusterName] Name of the cluster
  /// [placementPolicyName] Name of the placement policy.
  /// [privateCloudName] Name of the private cloud
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PlacementPolicyArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? placementPolicyName,
    required pulumi.Output<String> privateCloudName,
    pulumi.Output<VmHostPlacementPolicyProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      placementPolicyName = pulumi.Input.asOptionalInput<String>(placementPolicyName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      properties = pulumi.Input.asOptionalInput<VmHostPlacementPolicyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'placementPolicyName': ?placementPolicyName,
      'privateCloudName': privateCloudName,
      'properties': ?pulumi.Input.mapOptionalInputValue<VmHostPlacementPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PlacementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      placementPolicyName: map['placementPolicyName'] == null ? null : pulumi.Output.create<String>(map['placementPolicyName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<VmHostPlacementPolicyProperties>(VmHostPlacementPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

