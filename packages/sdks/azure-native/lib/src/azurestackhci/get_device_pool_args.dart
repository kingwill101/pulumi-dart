// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_device_pool_args_doc}
/// Arguments for getDevicePool.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_device_pool_args_doc}
class GetDevicePoolArgs {
  /// The name of the DevicePool
  final pulumi.Input<String> devicePoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDevicePoolArgs].
  /// [devicePoolName] The name of the DevicePool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDevicePoolArgs({
    required this.devicePoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePoolName': devicePoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevicePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDevicePoolArgs(
      devicePoolName: pulumi.Input.fromValue(map['devicePoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
