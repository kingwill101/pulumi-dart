// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_network_interface_args_doc}
/// Arguments for getNetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_network_interface_args_doc}
class GetNetworkInterfaceArgs {
  /// Name of the network interface
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkInterfaceArgs].
  /// [networkInterfaceName] Name of the network interface
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkInterfaceArgs({
    required this.networkInterfaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceArgs(
      networkInterfaceName: pulumi.Input.fromValue(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
