// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_fleet_member_args_doc}
/// Arguments for getFleetMember.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_fleet_member_args_doc}
class GetFleetMemberArgs {
  /// The name of the Fleet member resource.
  final pulumi.Input<String> fleetMemberName;
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetMemberArgs].
  /// [fleetMemberName] The name of the Fleet member resource.
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetMemberArgs({
    required pulumi.Output<String> fleetMemberName,
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fleetMemberName = pulumi.Input.asInput<String>(fleetMemberName),
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetMemberName': fleetMemberName,
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetMemberArgs(
      fleetMemberName: pulumi.Output.create<String>(map['fleetMemberName'] as String),
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

