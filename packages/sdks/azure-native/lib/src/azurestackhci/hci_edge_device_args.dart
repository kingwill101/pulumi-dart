// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_edge_device_properties.dart';

/// {@template pulumi_azurestackhci_hci_edge_device_args_doc}
/// The set of arguments for HciEdgeDevice.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_hci_edge_device_args_doc}
class HciEdgeDeviceArgs {
  /// Name of Device
  final pulumi.Input<String>? edgeDeviceName;
  /// Edge device kind.
  /// Expected value is 'HCI'.
  final pulumi.Input<String> kind;
  /// properties for Arc-enabled edge device with HCI OS.
  final pulumi.Input<HciEdgeDeviceProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [HciEdgeDeviceArgs].
  /// [edgeDeviceName] Name of Device
  /// [kind] Edge device kind.
  /// [properties] properties for Arc-enabled edge device with HCI OS.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  HciEdgeDeviceArgs({
    pulumi.Output<String>? edgeDeviceName,
    required pulumi.Output<String> kind,
    pulumi.Output<HciEdgeDeviceProperties>? properties,
    required pulumi.Output<String> resourceUri,
  }) :
      edgeDeviceName = pulumi.Input.asOptionalInput<String>(edgeDeviceName),
      kind = pulumi.Input.asInput<String>(kind),
      properties = pulumi.Input.asOptionalInput<HciEdgeDeviceProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeDeviceName': ?edgeDeviceName,
      'kind': kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<HciEdgeDeviceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory HciEdgeDeviceArgs.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceArgs(
      edgeDeviceName: map['edgeDeviceName'] == null ? null : pulumi.Output.create<String>(map['edgeDeviceName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<HciEdgeDeviceProperties>(HciEdgeDeviceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

