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
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworkSubnetProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subnetName': ?subnetName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory VirtualNetworkSubnetArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetArgs(
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworkSubnetProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subnetName: (() {
        final guardedValue = map['subnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualNetworkName: pulumi.Input.fromValue(
        map['virtualNetworkName'] as String,
      ),
    );
  }
}
