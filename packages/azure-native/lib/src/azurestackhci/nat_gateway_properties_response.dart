// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule_response.dart';
import 'nat_gateway_status_response.dart';
import 'public_ipaddress_arm_reference_response.dart';
import 'virtual_network_subnet_arm_reference_response.dart';

/// Nat Gateway resource properties
class NatGatewayPropertiesResponse {
  /// List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  final List<InboundNATRuleResponse>? inboundNATRules;
  /// Provisioning state of the public IP
  final String provisioningState;
  /// List of public ip addresses that the gateway can use for NAT.
  final List<PublicIPAddressArmReferenceResponse>? publicIPAddresses;
  /// The observed state of Nat Gateway
  final NatGatewayStatusResponse status;
  /// List of subnets associated with the nat gateway. These can only be vnet subnets and must be from the same vnet
  final List<VirtualNetworkSubnetArmReferenceResponse> subnets;

  /// Creates a new [NatGatewayPropertiesResponse].
  /// [inboundNATRules] List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  /// [provisioningState] Provisioning state of the public IP
  /// [publicIPAddresses] List of public ip addresses that the gateway can use for NAT.
  /// [status] The observed state of Nat Gateway
  /// [subnets] List of subnets associated with the nat gateway. These can only be vnet subnets and must be from the same vnet
  NatGatewayPropertiesResponse({
    this.inboundNATRules,
    required this.provisioningState,
    this.publicIPAddresses,
    required this.status,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNATRules': ?inboundNATRules == null ? null : pulumi.Input.encodeList<InboundNATRuleResponse, Map<String, dynamic>>(inboundNATRules!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicIPAddresses': ?publicIPAddresses == null ? null : pulumi.Input.encodeList<PublicIPAddressArmReferenceResponse, Map<String, dynamic>>(publicIPAddresses!, (value) => value.toMap()),
      'status': status.toMap(),
      'subnets': pulumi.Input.encodeList<VirtualNetworkSubnetArmReferenceResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
    };
  }

  factory NatGatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayPropertiesResponse(
      inboundNATRules: map['inboundNATRules'] == null ? null : pulumi.Input.decodeList<InboundNATRuleResponse>(map['inboundNATRules'], (value) => InboundNATRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicIPAddresses: map['publicIPAddresses'] == null ? null : pulumi.Input.decodeList<PublicIPAddressArmReferenceResponse>(map['publicIPAddresses'], (value) => PublicIPAddressArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: NatGatewayStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      subnets: pulumi.Input.decodeList<VirtualNetworkSubnetArmReferenceResponse>(map['subnets'], (value) => VirtualNetworkSubnetArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

