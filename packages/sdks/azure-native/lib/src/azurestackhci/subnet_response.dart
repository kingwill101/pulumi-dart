// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ippool_response.dart';
import 'network_security_group_arm_reference_response.dart';
import 'route_table_response.dart';
import 'subnet_ip_configuration_reference_response.dart';

/// Properties of the subnet.
class SubnetResponse {
  /// The address prefix for the subnet: Cidr for this subnet - IPv4, IPv6.
  final pulumi.Input<String>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final pulumi.Input<String>? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final pulumi.Input<List<SubnetIpConfigurationReferenceResponse>>? ipConfigurationReferences;
  /// network associated pool of IP Addresses
  final pulumi.Input<List<IPPoolResponse>>? ipPools;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// NetworkSecurityGroup - Network Security Group attached to the logical network.
  final pulumi.Input<NetworkSecurityGroupArmReferenceResponse>? networkSecurityGroup;
  /// Route table resource.
  final pulumi.Input<RouteTableResponse>? routeTable;
  /// Vlan to use for the subnet
  final pulumi.Input<int>? vlan;

  /// Creates a new [SubnetResponse].
  /// [addressPrefix] The address prefix for the subnet: Cidr for this subnet - IPv4, IPv6.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [ipAllocationMethod] IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  /// [ipConfigurationReferences] IPConfigurationReferences - list of IPConfigurationReferences
  /// [ipPools] network associated pool of IP Addresses
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkSecurityGroup] NetworkSecurityGroup - Network Security Group attached to the logical network.
  /// [routeTable] Route table resource.
  /// [vlan] Vlan to use for the subnet
  SubnetResponse({
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
      'ipConfigurationReferences': ?pulumi.Input.mapOptionalInputValue<List<SubnetIpConfigurationReferenceResponse>, List<Map<String, dynamic>>>(ipConfigurationReferences, (value) => pulumi.Input.encodeList<SubnetIpConfigurationReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPools': ?pulumi.Input.mapOptionalInputValue<List<IPPoolResponse>, List<Map<String, dynamic>>>(ipPools, (value) => pulumi.Input.encodeList<IPPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupArmReferenceResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTableResponse, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'vlan': ?vlan,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAllocationMethod: (() { final guardedValue = map['ipAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurationReferences: (() { final guardedValue = map['ipConfigurationReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetIpConfigurationReferenceResponse>(guardedValue, (value) => SubnetIpConfigurationReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipPools: (() { final guardedValue = map['ipPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPPoolResponse>(guardedValue, (value) => IPPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

