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
    required pulumi.Output<String> networkDeviceName,
    required pulumi.Output<String> networkInterfaceName,
    required pulumi.Output<String> resourceGroupName,
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
      networkDeviceName: pulumi.Output.create<String>(map['networkDeviceName'] as String),
      networkInterfaceName: pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

