// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_bootstrap_device_args_doc}
/// Arguments for getNetworkBootstrapDevice.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_bootstrap_device_args_doc}
class GetNetworkBootstrapDeviceArgs {
  /// Name of the Network Bootstrap Device.
  final pulumi.Input<String> networkBootstrapDeviceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkBootstrapDeviceArgs].
  /// [networkBootstrapDeviceName] Name of the Network Bootstrap Device.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkBootstrapDeviceArgs({
    required this.networkBootstrapDeviceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkBootstrapDeviceName': networkBootstrapDeviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkBootstrapDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkBootstrapDeviceArgs(
      networkBootstrapDeviceName: pulumi.Input.fromValue(map['networkBootstrapDeviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
