// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_tdevice_info.dart';

/// {@template pulumi_databoxedge_io_taddon_args_doc}
/// The set of arguments for IoTAddon.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_io_taddon_args_doc}
class IoTAddonArgs {
  /// The addon name.
  final pulumi.Input<String>? addonName;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// IoT device metadata to which appliance needs to be connected.
  final pulumi.Input<IoTDeviceInfo> ioTDeviceDetails;
  /// IoT edge device to which the IoT Addon needs to be configured.
  final pulumi.Input<IoTDeviceInfo> ioTEdgeDeviceDetails;
  /// Addon type.
  /// Expected value is 'IotEdge'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [IoTAddonArgs].
  /// [addonName] The addon name.
  /// [deviceName] The device name.
  /// [ioTDeviceDetails] IoT device metadata to which appliance needs to be connected.
  /// [ioTEdgeDeviceDetails] IoT edge device to which the IoT Addon needs to be configured.
  /// [kind] Addon type.
  /// [resourceGroupName] The resource group name.
  /// [roleName] The role name.
  IoTAddonArgs({
    pulumi.Output<String>? addonName,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<IoTDeviceInfo> ioTDeviceDetails,
    required pulumi.Output<IoTDeviceInfo> ioTEdgeDeviceDetails,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleName,
  }) :
      addonName = pulumi.Input.asOptionalInput<String>(addonName),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      ioTDeviceDetails = pulumi.Input.asInput<IoTDeviceInfo>(ioTDeviceDetails),
      ioTEdgeDeviceDetails = pulumi.Input.asInput<IoTDeviceInfo>(ioTEdgeDeviceDetails),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'deviceName': deviceName,
      'ioTDeviceDetails': pulumi.Input.mapInputValue<IoTDeviceInfo, Map<String, dynamic>>(ioTDeviceDetails, (value) => value.toMap()),
      'ioTEdgeDeviceDetails': pulumi.Input.mapInputValue<IoTDeviceInfo, Map<String, dynamic>>(ioTEdgeDeviceDetails, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory IoTAddonArgs.fromMap(Map<String, dynamic> map) {
    return IoTAddonArgs(
      addonName: map['addonName'] == null ? null : pulumi.Output.create<String>(map['addonName'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      ioTDeviceDetails: pulumi.Output.create<IoTDeviceInfo>(IoTDeviceInfo.fromMap((map['ioTDeviceDetails'] as Map).cast<String, dynamic>())),
      ioTEdgeDeviceDetails: pulumi.Output.create<IoTDeviceInfo>(IoTDeviceInfo.fromMap((map['ioTEdgeDeviceDetails'] as Map).cast<String, dynamic>())),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

