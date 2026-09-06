// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Switch configuration description.
  final pulumi.Input<String?>? annotation;
  /// Name of the Network Device.
  final pulumi.Input<String> networkDeviceName;
  /// Name of the Network Interface.
  final pulumi.Input<String?>? networkInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkInterfaceArgs].
  /// [annotation] Switch configuration description.
  /// [networkDeviceName] Name of the Network Device.
  /// [networkInterfaceName] Name of the Network Interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const NetworkInterfaceArgs({
    this.annotation,
    required this.networkDeviceName,
    this.networkInterfaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'networkDeviceName': networkDeviceName,
      'networkInterfaceName': ?networkInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkDeviceName: pulumi.Input.fromValue(map['networkDeviceName'] as String),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
