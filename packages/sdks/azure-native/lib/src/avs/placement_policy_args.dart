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
    required this.clusterName,
    this.placementPolicyName,
    required this.privateCloudName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'placementPolicyName': ?placementPolicyName,
      'privateCloudName': privateCloudName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            VmHostPlacementPolicyProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PlacementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      placementPolicyName: (() {
        final guardedValue = map['placementPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VmHostPlacementPolicyProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
