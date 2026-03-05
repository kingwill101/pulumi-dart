// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_fleet_member_args_doc}
/// The set of arguments for FleetMember.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_member_args_doc}
class FleetMemberArgs {
  /// The ARM resource id of the cluster that joins the Fleet. Must be a valid Azure resource id. e.g.: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{clusterName}'.
  final pulumi.Input<String> clusterResourceId;
  /// The name of the Fleet member resource.
  final pulumi.Input<String>? fleetMemberName;
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The group this member belongs to for multi-cluster update management.
  final pulumi.Input<String>? group;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FleetMemberArgs].
  /// [clusterResourceId] The ARM resource id of the cluster that joins the Fleet. Must be a valid Azure resource id. e.g.: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{clusterName}'.
  /// [fleetMemberName] The name of the Fleet member resource.
  /// [fleetName] The name of the Fleet resource.
  /// [group] The group this member belongs to for multi-cluster update management.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FleetMemberArgs({
    required this.clusterResourceId,
    this.fleetMemberName,
    required this.fleetName,
    this.group,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': clusterResourceId,
      'fleetMemberName': ?fleetMemberName,
      'fleetName': fleetName,
      'group': ?group,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FleetMemberArgs.fromMap(Map<String, dynamic> map) {
    return FleetMemberArgs(
      clusterResourceId: pulumi.Input.fromValue(map['clusterResourceId'] as String),
      fleetMemberName: (() { final guardedValue = map['fleetMemberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

