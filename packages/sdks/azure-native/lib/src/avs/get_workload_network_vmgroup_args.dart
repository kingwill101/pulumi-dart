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
    required this.privateCloudName,
    required this.resourceGroupName,
    required this.vmGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'vmGroupId': vmGroupId,
    };
  }

  factory GetWorkloadNetworkVMGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkVMGroupArgs(
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vmGroupId: pulumi.Input.fromValue(map['vmGroupId'] as String),
    );
  }
}
