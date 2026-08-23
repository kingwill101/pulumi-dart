// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_os_job_properties.dart';

/// {@template pulumi_azurestackhci_edge_machine_job_args_doc}
/// The set of arguments for EdgeMachineJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_edge_machine_job_args_doc}
class EdgeMachineJobArgs {
  /// Name of Device
  final pulumi.Input<String> edgeMachineName;
  /// Name of EdgeMachineJob
  final pulumi.Input<String>? jobsName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DownloadOsJobProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [EdgeMachineJobArgs].
  /// [edgeMachineName] Name of Device
  /// [jobsName] Name of EdgeMachineJob
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const EdgeMachineJobArgs({
    required this.edgeMachineName,
    this.jobsName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeMachineName': edgeMachineName,
      'jobsName': ?jobsName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DownloadOsJobProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory EdgeMachineJobArgs.fromMap(Map<String, dynamic> map) {
    return EdgeMachineJobArgs(
      edgeMachineName: pulumi.Input.fromValue(map['edgeMachineName'] as String),
      jobsName: (() { final guardedValue = map['jobsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DownloadOsJobProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
