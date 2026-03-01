// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_distributed_availability_group_args_doc}
/// Arguments for getDistributedAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_distributed_availability_group_args_doc}
class GetDistributedAvailabilityGroupArgs {
  /// The distributed availability group name.
  final pulumi.Input<String> distributedAvailabilityGroupName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDistributedAvailabilityGroupArgs].
  /// [distributedAvailabilityGroupName] The distributed availability group name.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetDistributedAvailabilityGroupArgs({
    required String distributedAvailabilityGroupName,
    required String managedInstanceName,
    required String resourceGroupName,
  }) :
      distributedAvailabilityGroupName = pulumi.Input.asInput<String>(distributedAvailabilityGroupName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributedAvailabilityGroupName': distributedAvailabilityGroupName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDistributedAvailabilityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributedAvailabilityGroupArgs(
      distributedAvailabilityGroupName: map['distributedAvailabilityGroupName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

