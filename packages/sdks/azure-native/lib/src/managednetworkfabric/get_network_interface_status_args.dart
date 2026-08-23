// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_interface_status_args_doc}
/// Arguments for getNetworkInterfaceStatus.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_interface_status_args_doc}
class GetNetworkInterfaceStatusArgs {
  /// Name of the NetworkDevice.
  final pulumi.Input<String> networkDeviceName;
  /// Name of the NetworkInterface
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkInterfaceStatusArgs].
  /// [networkDeviceName] Name of the NetworkDevice.
  /// [networkInterfaceName] Name of the NetworkInterface
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkInterfaceStatusArgs({
    required this.networkDeviceName,
    required this.networkInterfaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkDeviceName': networkDeviceName,
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkInterfaceStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceStatusArgs(
      networkDeviceName: pulumi.Input.fromValue(map['networkDeviceName'] as String),
      networkInterfaceName: pulumi.Input.fromValue(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
