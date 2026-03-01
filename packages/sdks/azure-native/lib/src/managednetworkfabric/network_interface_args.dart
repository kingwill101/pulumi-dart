// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the Network Device.
  final pulumi.Input<String> networkDeviceName;
  /// Name of the Network Interface.
  final pulumi.Input<String>? networkInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkInterfaceArgs].
  /// [annotation] Switch configuration description.
  /// [networkDeviceName] Name of the Network Device.
  /// [networkInterfaceName] Name of the Network Interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  NetworkInterfaceArgs({
    pulumi.Output<String>? annotation,
    required pulumi.Output<String> networkDeviceName,
    pulumi.Output<String>? networkInterfaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      networkDeviceName = pulumi.Input.asInput<String>(networkDeviceName),
      networkInterfaceName = pulumi.Input.asOptionalInput<String>(networkInterfaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      networkDeviceName: pulumi.Output.create<String>(map['networkDeviceName'] as String),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

