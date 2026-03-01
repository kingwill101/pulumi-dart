// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_capacity_reservation_group_args_doc}
/// Arguments for getCapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_capacity_reservation_group_args_doc}
class GetCapacityReservationGroupArgs {
  /// Group ID
  final pulumi.Input<String> groupId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCapacityReservationGroupArgs].
  /// [groupId] Group ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCapacityReservationGroupArgs({
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCapacityReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationGroupArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

