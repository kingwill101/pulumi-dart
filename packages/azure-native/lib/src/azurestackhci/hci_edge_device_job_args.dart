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
    required String edgeDeviceName,
    String? jobsName,
    required String kind,
    required HciCollectLogJobProperties properties,
    required String resourceUri,
  }) :
      edgeDeviceName = pulumi.Input.asInput<String>(edgeDeviceName),
      jobsName = pulumi.Input.asOptionalInput<String>(jobsName),
      kind = pulumi.Input.asInput<String>(kind),
      properties = pulumi.Input.asInput<HciCollectLogJobProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

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
      edgeDeviceName: map['edgeDeviceName'] as String,
      jobsName: map['jobsName'] == null ? null : map['jobsName'] as String,
      kind: map['kind'] as String,
      properties: HciCollectLogJobProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceUri: map['resourceUri'] as String,
    );
  }
}

