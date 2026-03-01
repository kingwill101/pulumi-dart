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
  GetNetworkInterfaceStatusArgs({
    required String networkDeviceName,
    required String networkInterfaceName,
    required String resourceGroupName,
  }) :
      networkDeviceName = pulumi.Input.asInput<String>(networkDeviceName),
      networkInterfaceName = pulumi.Input.asInput<String>(networkInterfaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkDeviceName': networkDeviceName,
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkInterfaceStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceStatusArgs(
      networkDeviceName: map['networkDeviceName'] as String,
      networkInterfaceName: map['networkInterfaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

