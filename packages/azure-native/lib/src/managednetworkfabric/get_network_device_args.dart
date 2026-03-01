// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_device_args_doc}
/// Arguments for getNetworkDevice.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_device_args_doc}
class GetNetworkDeviceArgs {
  /// Name of the Network Device.
  final pulumi.Input<String> networkDeviceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkDeviceArgs].
  /// [networkDeviceName] Name of the Network Device.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkDeviceArgs({
    required String networkDeviceName,
    required String resourceGroupName,
  }) :
      networkDeviceName = pulumi.Input.asInput<String>(networkDeviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkDeviceName': networkDeviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkDeviceArgs(
      networkDeviceName: map['networkDeviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

