// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_vmgroup_args_doc}
/// Arguments for getWorkloadNetworkVMGroup.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_vmgroup_args_doc}
class GetWorkloadNetworkVMGroupArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// ID of the VM group.
  final pulumi.Input<String> vmGroupId;

  /// Creates a new [GetWorkloadNetworkVMGroupArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmGroupId] ID of the VM group.
  GetWorkloadNetworkVMGroupArgs({
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmGroupId,
  }) :
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmGroupId = pulumi.Input.asInput<String>(vmGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'vmGroupId': vmGroupId,
    };
  }

  factory GetWorkloadNetworkVMGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkVMGroupArgs(
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmGroupId: pulumi.Output.create<String>(map['vmGroupId'] as String),
    );
  }
}

