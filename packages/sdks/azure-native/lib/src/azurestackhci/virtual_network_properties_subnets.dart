// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_ip_configuration_references.dart';
import 'virtual_network_properties_route_table.dart';

/// Subnet subnet in a virtual network resource.
class VirtualNetworkPropertiesSubnets {
  /// Cidr for this subnet - IPv4, IPv6
  final pulumi.Input<String>? addressPrefix;
  /// AddressPrefixes - List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final pulumi.Input<String>? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final pulumi.Input<List<VirtualNetworkPropertiesIpConfigurationReferences>>? ipConfigurationReferences;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// RouteTable for the subnet
  final pulumi.Input<VirtualNetworkPropertiesRouteTable>? routeTable;
  /// Vlan to use for the subnet
  final pulumi.Input<int>? vlan;

  /// Creates a new [VirtualNetworkPropertiesSubnets].
  /// [addressPrefix] Cidr for this subnet - IPv4, IPv6
  /// [addressPrefixes] AddressPrefixes - List of address prefixes for the subnet.
  /// [ipAllocationMethod] IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  /// [ipConfigurationReferences] IPConfigurationReferences - list of IPConfigurationReferences
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routeTable] RouteTable for the subnet
  /// [vlan] Vlan to use for the subnet
  VirtualNetworkPropertiesSubnets({
    this.addressPrefix,
    this.addressPrefixes,
    this.ipAllocationMethod,
    this.ipConfigurationReferences,
    this.name,
    this.routeTable,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'ipAllocationMethod': ?ipAllocationMethod,
      'ipConfigurationReferences': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesIpConfigurationReferences>, List<Map<String, dynamic>>>(ipConfigurationReferences, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesIpConfigurationReferences, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesRouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'vlan': ?vlan,
    };
  }

  factory VirtualNetworkPropertiesSubnets.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesSubnets(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      ipAllocationMethod: map['ipAllocationMethod'] == null ? null : (map['ipAllocationMethod'] as String).input(),
      ipConfigurationReferences: map['ipConfigurationReferences'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkPropertiesIpConfigurationReferences>(map['ipConfigurationReferences'], (value) => VirtualNetworkPropertiesIpConfigurationReferences.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      routeTable: map['routeTable'] == null ? null : (VirtualNetworkPropertiesRouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (map['vlan'] as int).input(),
    );
  }
}

