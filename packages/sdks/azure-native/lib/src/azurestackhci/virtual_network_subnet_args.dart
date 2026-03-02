// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'virtual_network_subnet_properties.dart';

/// {@template pulumi_azurestackhci_virtual_network_subnet_args_doc}
/// The set of arguments for VirtualNetworkSubnet.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_virtual_network_subnet_args_doc}
class VirtualNetworkSubnetArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The resource-specific properties for this resource.
  final pulumi.Input<VirtualNetworkSubnetProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual network subnet
  final pulumi.Input<String>? subnetName;
  /// Name of the virtual network
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [VirtualNetworkSubnetArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnetName] Name of the virtual network subnet
  /// [virtualNetworkName] Name of the virtual network
  VirtualNetworkSubnetArgs({
    this.extendedLocation,
    this.properties,
    required this.resourceGroupName,
    this.subnetName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnetProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subnetName': ?subnetName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory VirtualNetworkSubnetArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetArgs(
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (VirtualNetworkSubnetProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnetName: map['subnetName'] == null ? null : (map['subnetName']! as String).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

