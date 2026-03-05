// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_collect_log_job_properties.dart';

/// {@template pulumi_azurestackhci_hci_edge_device_job_args_doc}
/// The set of arguments for HciEdgeDeviceJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_hci_edge_device_job_args_doc}
class HciEdgeDeviceJobArgs {
  /// The name of the EdgeDevice
  final pulumi.Input<String> edgeDeviceName;
  /// Name of EdgeDevice Job
  final pulumi.Input<String>? jobsName;
  /// Edge device kind.
  /// Expected value is 'HCI'.
  final pulumi.Input<String> kind;
  /// HCI Edge device job properties
  final pulumi.Input<HciCollectLogJobProperties> properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [HciEdgeDeviceJobArgs].
  /// [edgeDeviceName] The name of the EdgeDevice
  /// [jobsName] Name of EdgeDevice Job
  /// [kind] Edge device kind.
  /// [properties] HCI Edge device job properties
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  HciEdgeDeviceJobArgs({
    required this.edgeDeviceName,
    this.jobsName,
    required this.kind,
    required this.properties,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeDeviceName': edgeDeviceName,
      'jobsName': ?jobsName,
      'kind': kind,
      'properties': pulumi.Input.mapInputValue<HciCollectLogJobProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory HciEdgeDeviceJobArgs.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceJobArgs(
      edgeDeviceName: pulumi.Input.fromValue(map['edgeDeviceName'] as String),
      jobsName: (() { final guardedValue = map['jobsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      properties: pulumi.Input.fromValue(HciCollectLogJobProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

