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
  final pulumi.Input<String> addressPrefix;
  /// List of ip configurations for the subnet
  final pulumi.Input<List<VirtualNetworkSubnetIpConfigurationReferenceResponse>> ipConfigurations;
  /// Nat Gateway attached to the subnet for non-vnet traffic.
  final pulumi.Input<NatGatewayArmReferenceResponse>? natGateway;
  /// Network Security Group attached to the subnet.
  final pulumi.Input<NetworkSecurityGroupArmReferenceResponse>? networkSecurityGroup;
  /// The provisioning state of the virtual network subnet resource.
  final pulumi.Input<String> provisioningState;
  /// RouteTable defining custom routes for the subnet.
  final pulumi.Input<RouteTableResponse>? routeTable;
  /// The observed status of the virtual network subnet resource.
  final pulumi.Input<VirtualNetworkSubnetStatusResponse> status;

  /// Creates a new [VirtualNetworkSubnetPropertiesResponse].
  /// [addressPrefix] Subnet CIDR
  /// [ipConfigurations] List of ip configurations for the subnet
  /// [natGateway] Nat Gateway attached to the subnet for non-vnet traffic.
  /// [networkSecurityGroup] Network Security Group attached to the subnet.
  /// [provisioningState] The provisioning state of the virtual network subnet resource.
  /// [routeTable] RouteTable defining custom routes for the subnet.
  /// [status] The observed status of the virtual network subnet resource.
  const VirtualNetworkSubnetPropertiesResponse({
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
      'ipConfigurations': pulumi.Input.mapInputValue<List<VirtualNetworkSubnetIpConfigurationReferenceResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualNetworkSubnetIpConfigurationReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'natGateway': ?pulumi.Input.mapOptionalInputValue<NatGatewayArmReferenceResponse, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupArmReferenceResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTableResponse, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'status': pulumi.Input.mapInputValue<VirtualNetworkSubnetStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkSubnetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetPropertiesResponse(
      addressPrefix: pulumi.Input.fromValue(map['addressPrefix'] as String),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkSubnetIpConfigurationReferenceResponse>(map['ipConfigurations']!, (value) => VirtualNetworkSubnetIpConfigurationReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: pulumi.Input.fromValue(VirtualNetworkSubnetStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
