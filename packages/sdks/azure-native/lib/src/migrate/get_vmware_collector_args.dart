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
  GetVMwareCollectorArgs({
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmWareCollectorName,
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

  factory GetVMwareCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetVMwareCollectorArgs(
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmWareCollectorName: pulumi.Output.create<String>(map['vmWareCollectorName'] as String),
    );
  }
}

