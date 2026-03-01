// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_arm_reference_response.dart';
import 'network_security_group_arm_reference_response.dart';
import 'route_table_response.dart';
import 'virtual_network_subnet_ip_configuration_reference_response.dart';
import 'virtual_network_subnet_status_response.dart';

/// VirtualNetwork subnet resource
class VirtualNetworkSubnetPropertiesResponse {
  /// Subnet CIDR
  final String addressPrefix;
  /// List of ip configurations for the subnet
  final List<VirtualNetworkSubnetIpConfigurationReferenceResponse> ipConfigurations;
  /// Nat Gateway attached to the subnet for non-vnet traffic.
  final NatGatewayArmReferenceResponse? natGateway;
  /// Network Security Group attached to the subnet.
  final NetworkSecurityGroupArmReferenceResponse? networkSecurityGroup;
  /// The provisioning state of the virtual network subnet resource.
  final String provisioningState;
  /// RouteTable defining custom routes for the subnet.
  final RouteTableResponse? routeTable;
  /// The observed status of the virtual network subnet resource.
  final VirtualNetworkSubnetStatusResponse status;

  /// Creates a new [VirtualNetworkSubnetPropertiesResponse].
  /// [addressPrefix] Subnet CIDR
  /// [ipConfigurations] List of ip configurations for the subnet
  /// [natGateway] Nat Gateway attached to the subnet for non-vnet traffic.
  /// [networkSecurityGroup] Network Security Group attached to the subnet.
  /// [provisioningState] The provisioning state of the virtual network subnet resource.
  /// [routeTable] RouteTable defining custom routes for the subnet.
  /// [status] The observed status of the virtual network subnet resource.
  VirtualNetworkSubnetPropertiesResponse({
    required this.addressPrefix,
    required this.ipConfigurations,
    this.natGateway,
    this.networkSecurityGroup,
    required this.provisioningState,
    this.routeTable,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'ipConfigurations': pulumi.Input.encodeList<VirtualNetworkSubnetIpConfigurationReferenceResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
      'provisioningState': provisioningState,
      'routeTable': ?routeTable == null ? null : routeTable!.toMap(),
      'status': status.toMap(),
    };
  }

  factory VirtualNetworkSubnetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetPropertiesResponse(
      addressPrefix: map['addressPrefix'] as String,
      ipConfigurations: pulumi.Input.decodeList<VirtualNetworkSubnetIpConfigurationReferenceResponse>(map['ipConfigurations'], (value) => VirtualNetworkSubnetIpConfigurationReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      natGateway: map['natGateway'] == null ? null : NatGatewayArmReferenceResponse.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NetworkSecurityGroupArmReferenceResponse.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      routeTable: map['routeTable'] == null ? null : RouteTableResponse.fromMap((map['routeTable'] as Map).cast<String, dynamic>()),
      status: VirtualNetworkSubnetStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

