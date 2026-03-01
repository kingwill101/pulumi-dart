// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_vmware_collectors_operation_args_doc}
/// Arguments for getVmwareCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_vmware_collectors_operation_args_doc}
class GetVmwareCollectorsOperationArgs {
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// VMware collector ARM name
  final pulumi.Input<String> vmWareCollectorName;

  /// Creates a new [GetVmwareCollectorsOperationArgs].
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmWareCollectorName] VMware collector ARM name
  GetVmwareCollectorsOperationArgs({
    required String projectName,
    required String resourceGroupName,
    required String vmWareCollectorName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmWareCollectorName = pulumi.Input.asInput<String>(vmWareCollectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'vmWareCollectorName': vmWareCollectorName,
    };
  }

  factory GetVmwareCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareCollectorsOperationArgs(
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vmWareCollectorName: map['vmWareCollectorName'] as String,
    );
  }
}

