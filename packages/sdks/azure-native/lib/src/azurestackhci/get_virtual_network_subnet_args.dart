// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_virtual_network_subnet_args_doc}
/// Arguments for getVirtualNetworkSubnet.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_virtual_network_subnet_args_doc}
class GetVirtualNetworkSubnetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual network subnet
  final pulumi.Input<String> subnetName;
  /// Name of the virtual network
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetVirtualNetworkSubnetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnetName] Name of the virtual network subnet
  /// [virtualNetworkName] Name of the virtual network
  GetVirtualNetworkSubnetArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subnetName,
    required pulumi.Output<String> virtualNetworkName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnetName = pulumi.Input.asInput<String>(subnetName),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'subnetName': subnetName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetVirtualNetworkSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkSubnetArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetName: pulumi.Output.create<String>(map['subnetName'] as String),
      virtualNetworkName: pulumi.Output.create<String>(map['virtualNetworkName'] as String),
    );
  }
}

