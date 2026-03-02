// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_interface_args_doc}
/// Arguments for getNetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_interface_args_doc}
class GetNetworkInterfaceArgs {
  /// Name of the Network Device.
  final pulumi.Input<String> networkDeviceName;
  /// Name of the Network Interface.
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkInterfaceArgs].
  /// [networkDeviceName] Name of the Network Device.
  /// [networkInterfaceName] Name of the Network Interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkInterfaceArgs({
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

  factory GetNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceArgs(
      networkDeviceName: (map['networkDeviceName'] as String).input(),
      networkInterfaceName: (map['networkInterfaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

