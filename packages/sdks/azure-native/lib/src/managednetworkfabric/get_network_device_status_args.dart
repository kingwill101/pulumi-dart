// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_device_status_args_doc}
/// Arguments for getNetworkDeviceStatus.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_device_status_args_doc}
class GetNetworkDeviceStatusArgs {
  /// Name of the NetworkDevice.
  final pulumi.Input<String> networkDeviceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkDeviceStatusArgs].
  /// [networkDeviceName] Name of the NetworkDevice.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkDeviceStatusArgs({
    required this.networkDeviceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkDeviceName': networkDeviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkDeviceStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkDeviceStatusArgs(
      networkDeviceName: pulumi.Input.fromValue(map['networkDeviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

