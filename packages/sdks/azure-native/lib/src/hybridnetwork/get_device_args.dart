// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_device_args_doc}
class GetDeviceArgs {
  /// The name of the device resource.
  final pulumi.Input<String> deviceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeviceArgs].
  /// [deviceName] The name of the device resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeviceArgs({required this.deviceName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
