// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'virtual_network_properties_dhcp_options.dart';
import 'virtual_network_properties_subnets.dart';

/// {@template pulumi_azurestackhci_virtual_network_args_doc}
/// The set of arguments for VirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_virtual_network_args_doc}
class VirtualNetworkArgs {
  /// DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
  final pulumi.Input<VirtualNetworkPropertiesDhcpOptions>? dhcpOptions;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Type of the network
  final pulumi.Input<String>? networkType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Subnet - list of subnets under the virtual network
  final pulumi.Input<List<VirtualNetworkPropertiesSubnets>>? subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual network
  final pulumi.Input<String>? virtualNetworkName;
  /// name of the network switch to be used for VMs
  final pulumi.Input<String>? vmSwitchName;

  /// Creates a new [VirtualNetworkArgs].
  /// [dhcpOptions] DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [networkType] Type of the network
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnets] Subnet - list of subnets under the virtual network
  /// [tags] Resource tags.
  /// [virtualNetworkName] Name of the virtual network
  /// [vmSwitchName] name of the network switch to be used for VMs
  const VirtualNetworkArgs({
    this.dhcpOptions,
    this.extendedLocation,
    this.location,
    this.networkType,
    required this.resourceGroupName,
    this.subnets,
    this.tags,
    this.virtualNetworkName,
    this.vmSwitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptions': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesDhcpOptions, Map<String, dynamic>>(dhcpOptions, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'networkType': ?networkType,
      'resourceGroupName': resourceGroupName,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesSubnets>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesSubnets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkName': ?virtualNetworkName,
      'vmSwitchName': ?vmSwitchName,
    };
  }

  factory VirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArgs(
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesDhcpOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesSubnets>(guardedValue, (value) => VirtualNetworkPropertiesSubnets.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkName: (() { final guardedValue = map['virtualNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSwitchName: (() { final guardedValue = map['vmSwitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
