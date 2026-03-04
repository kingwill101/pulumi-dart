// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_hci_edge_device_args_doc}
/// Arguments for getHciEdgeDevice.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_hci_edge_device_args_doc}
class GetHciEdgeDeviceArgs {
  /// Name of Device
  final pulumi.Input<String> edgeDeviceName;

  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetHciEdgeDeviceArgs].
  /// [edgeDeviceName] Name of Device
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetHciEdgeDeviceArgs({
    required this.edgeDeviceName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeDeviceName': edgeDeviceName,
      'resourceUri': resourceUri,
    };
  }

  factory GetHciEdgeDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetHciEdgeDeviceArgs(
      edgeDeviceName: pulumi.Input.fromValue(map['edgeDeviceName'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
