// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_hci_edge_device_job_args_doc}
/// Arguments for getHciEdgeDeviceJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_hci_edge_device_job_args_doc}
class GetHciEdgeDeviceJobArgs {
  /// The name of the EdgeDevice
  final pulumi.Input<String> edgeDeviceName;
  /// Name of EdgeDevice Job
  final pulumi.Input<String> jobsName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetHciEdgeDeviceJobArgs].
  /// [edgeDeviceName] The name of the EdgeDevice
  /// [jobsName] Name of EdgeDevice Job
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetHciEdgeDeviceJobArgs({
    required String edgeDeviceName,
    required String jobsName,
    required String resourceUri,
  }) :
      edgeDeviceName = pulumi.Input.asInput<String>(edgeDeviceName),
      jobsName = pulumi.Input.asInput<String>(jobsName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeDeviceName': edgeDeviceName,
      'jobsName': jobsName,
      'resourceUri': resourceUri,
    };
  }

  factory GetHciEdgeDeviceJobArgs.fromMap(Map<String, dynamic> map) {
    return GetHciEdgeDeviceJobArgs(
      edgeDeviceName: map['edgeDeviceName'] as String,
      jobsName: map['jobsName'] as String,
      resourceUri: map['resourceUri'] as String,
    );
  }
}

