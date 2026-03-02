// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ippool.dart';
import 'network_security_group_arm_reference.dart';
import 'route_table.dart';
import 'subnet_ip_configuration_reference.dart';

/// Properties of the subnet.
class Subnet {
  /// The address prefix for the subnet: Cidr for this subnet - IPv4, IPv6.
  final pulumi.Input<String>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final pulumi.Input<String>? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final pulumi.Input<List<SubnetIpConfigurationReference>>? ipConfigurationReferences;
  /// network associated pool of IP Addresses
  final pulumi.Input<List<IPPool>>? ipPools;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// NetworkSecurityGroup - Network Security Group attached to the logical network.
  final pulumi.Input<NetworkSecurityGroupArmReference>? networkSecurityGroup;
  /// Route table resource.
  final pulumi.Input<RouteTable>? routeTable;
  /// Vlan to use for the subnet
  final pulumi.Input<int>? vlan;

  /// Creates a new [Subnet].
  /// [addressPrefix] The address prefix for the subnet: Cidr for this subnet - IPv4, IPv6.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [ipAllocationMethod] IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  /// [ipConfigurationReferences] IPConfigurationReferences - list of IPConfigurationReferences
  /// [ipPools] network associated pool of IP Addresses
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkSecurityGroup] NetworkSecurityGroup - Network Security Group attached to the logical network.
  /// [routeTable] Route table resource.
  /// [vlan] Vlan to use for the subnet
  Subnet({
    this.addressPrefix,
    this.addressPrefixes,
    this.ipAllocationMethod,
    this.ipConfigurationReferences,
    this.ipPools,
    this.name,
    this.networkSecurityGroup,
    this.routeTable,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'ipAllocationMethod': ?ipAllocationMethod,
      'ipConfigurationReferences': ?pulumi.Input.mapOptionalInputValue<List<SubnetIpConfigurationReference>, List<Map<String, dynamic>>>(ipConfigurationReferences, (value) => pulumi.Input.encodeList<SubnetIpConfigurationReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPools': ?pulumi.Input.mapOptionalInputValue<List<IPPool>, List<Map<String, dynamic>>>(ipPools, (value) => pulumi.Input.encodeList<IPPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupArmReference, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'vlan': ?vlan,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      ipAllocationMethod: map['ipAllocationMethod'] == null ? null : (map['ipAllocationMethod']! as String).input(),
      ipConfigurationReferences: map['ipConfigurationReferences'] == null ? null : (pulumi.Input.decodeList<SubnetIpConfigurationReference>(map['ipConfigurationReferences']!, (value) => SubnetIpConfigurationReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipPools: map['ipPools'] == null ? null : (pulumi.Input.decodeList<IPPool>(map['ipPools']!, (value) => IPPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : (NetworkSecurityGroupArmReference.fromMap((map['networkSecurityGroup']! as Map).cast<String, dynamic>())).input(),
      routeTable: map['routeTable'] == null ? null : (RouteTable.fromMap((map['routeTable']! as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (map['vlan']! as int).input(),
    );
  }
}

