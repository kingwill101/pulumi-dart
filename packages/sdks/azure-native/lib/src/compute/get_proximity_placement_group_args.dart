// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_proximity_placement_group_args_doc}
/// Arguments for getProximityPlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_proximity_placement_group_args_doc}
class GetProximityPlacementGroupArgs {
  /// includeColocationStatus=true enables fetching the colocation status of all the resources in the proximity placement group.
  final pulumi.Input<String>? includeColocationStatus;
  /// The name of the proximity placement group.
  final pulumi.Input<String> proximityPlacementGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProximityPlacementGroupArgs].
  /// [includeColocationStatus] includeColocationStatus=true enables fetching the colocation status of all the resources in the proximity placement group.
  /// [proximityPlacementGroupName] The name of the proximity placement group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetProximityPlacementGroupArgs({
    this.includeColocationStatus,
    required this.proximityPlacementGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeColocationStatus': ?includeColocationStatus,
      'proximityPlacementGroupName': proximityPlacementGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProximityPlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetProximityPlacementGroupArgs(
      includeColocationStatus: (() { final guardedValue = map['includeColocationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proximityPlacementGroupName: pulumi.Input.fromValue(map['proximityPlacementGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
