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
  const IoTAddonArgs({
    this.addonName,
    required this.deviceName,
    required this.ioTDeviceDetails,
    required this.ioTEdgeDeviceDetails,
    required this.kind,
    required this.resourceGroupName,
    required this.roleName,
  });

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
      addonName: (() { final guardedValue = map['addonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      ioTDeviceDetails: pulumi.Input.fromValue(IoTDeviceInfo.fromMap((map['ioTDeviceDetails']! as Map).cast<String, dynamic>())),
      ioTEdgeDeviceDetails: pulumi.Input.fromValue(IoTDeviceInfo.fromMap((map['ioTEdgeDeviceDetails']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
