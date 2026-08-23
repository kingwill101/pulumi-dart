// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_bootstrap_interface_args_doc}
/// Arguments for getNetworkBootstrapInterface.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_bootstrap_interface_args_doc}
class GetNetworkBootstrapInterfaceArgs {
  /// Name of the Network Bootstrap Device.
  final pulumi.Input<String> networkBootstrapDeviceName;
  /// Name of the Network Bootstrap Interface.
  final pulumi.Input<String> networkBootstrapInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkBootstrapInterfaceArgs].
  /// [networkBootstrapDeviceName] Name of the Network Bootstrap Device.
  /// [networkBootstrapInterfaceName] Name of the Network Bootstrap Interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetNetworkBootstrapInterfaceArgs({
    required this.networkBootstrapDeviceName,
    required this.networkBootstrapInterfaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkBootstrapDeviceName': networkBootstrapDeviceName,
      'networkBootstrapInterfaceName': networkBootstrapInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkBootstrapInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkBootstrapInterfaceArgs(
      networkBootstrapDeviceName: pulumi.Input.fromValue(map['networkBootstrapDeviceName'] as String),
      networkBootstrapInterfaceName: pulumi.Input.fromValue(map['networkBootstrapInterfaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
