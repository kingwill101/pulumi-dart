// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_vmware_collector_args_doc}
/// Arguments for getVMwareCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_vmware_collector_args_doc}
class GetVMwareCollectorArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a VMware collector within a project.
  final pulumi.Input<String> vmWareCollectorName;

  /// Creates a new [GetVMwareCollectorArgs].
  /// [projectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [vmWareCollectorName] Unique name of a VMware collector within a project.
  const GetVMwareCollectorArgs({
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

  factory GetVMwareCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetVMwareCollectorArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmWareCollectorName: pulumi.Input.fromValue(map['vmWareCollectorName'] as String),
    );
  }
}

