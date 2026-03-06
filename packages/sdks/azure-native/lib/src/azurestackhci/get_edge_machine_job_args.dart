// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_edge_machine_job_args_doc}
/// Arguments for getEdgeMachineJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_edge_machine_job_args_doc}
class GetEdgeMachineJobArgs {
  /// Name of Device
  final pulumi.Input<String> edgeMachineName;
  /// Name of EdgeMachineJob
  final pulumi.Input<String> jobsName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEdgeMachineJobArgs].
  /// [edgeMachineName] Name of Device
  /// [jobsName] Name of EdgeMachineJob
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEdgeMachineJobArgs({
    required this.edgeMachineName,
    required this.jobsName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeMachineName': edgeMachineName,
      'jobsName': jobsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeMachineJobArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeMachineJobArgs(
      edgeMachineName: pulumi.Input.fromValue(map['edgeMachineName'] as String),
      jobsName: pulumi.Input.fromValue(map['jobsName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

