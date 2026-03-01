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
  EdgeMachineJobArgs({
    required pulumi.Output<String> edgeMachineName,
    pulumi.Output<String>? jobsName,
    pulumi.Output<DownloadOsJobProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      edgeMachineName = pulumi.Input.asInput<String>(edgeMachineName),
      jobsName = pulumi.Input.asOptionalInput<String>(jobsName),
      properties = pulumi.Input.asOptionalInput<DownloadOsJobProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      edgeMachineName: pulumi.Output.create<String>(map['edgeMachineName'] as String),
      jobsName: map['jobsName'] == null ? null : pulumi.Output.create<String>(map['jobsName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DownloadOsJobProperties>(DownloadOsJobProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

