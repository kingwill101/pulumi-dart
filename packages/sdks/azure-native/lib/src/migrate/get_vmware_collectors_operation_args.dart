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
    required this.projectName,
    required this.resourceGroupName,
    required this.vmWareCollectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'vmWareCollectorName': vmWareCollectorName,
    };
  }

  factory GetVmwareCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareCollectorsOperationArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmWareCollectorName: pulumi.Input.fromValue(map['vmWareCollectorName'] as String),
    );
  }
}

