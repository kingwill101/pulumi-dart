// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule_response.dart';
import 'nat_gateway_status_response.dart';
import 'public_ipaddress_arm_reference_response.dart';
import 'virtual_network_subnet_arm_reference_response.dart';

/// Nat Gateway resource properties
class NatGatewayPropertiesResponse {
  /// List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  final pulumi.Input<List<InboundNATRuleResponse>>? inboundNATRules;
  /// Provisioning state of the public IP
  final pulumi.Input<String> provisioningState;
  /// List of public ip addresses that the gateway can use for NAT.
  final pulumi.Input<List<PublicIPAddressArmReferenceResponse>>? publicIPAddresses;
  /// The observed state of Nat Gateway
  final pulumi.Input<NatGatewayStatusResponse> status;
  /// List of subnets associated with the nat gateway. These can only be vnet subnets and must be from the same vnet
  final pulumi.Input<List<VirtualNetworkSubnetArmReferenceResponse>> subnets;

  /// Creates a new [NatGatewayPropertiesResponse].
  /// [inboundNATRules] List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  /// [provisioningState] Provisioning state of the public IP
  /// [publicIPAddresses] List of public ip addresses that the gateway can use for NAT.
  /// [status] The observed state of Nat Gateway
  /// [subnets] List of subnets associated with the nat gateway. These can only be vnet subnets and must be from the same vnet
  const NatGatewayPropertiesResponse({
    this.inboundNATRules,
    required this.provisioningState,
    this.publicIPAddresses,
    required this.status,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNATRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNATRuleResponse>, List<Map<String, dynamic>>>(inboundNATRules, (value) => pulumi.Input.encodeList<InboundNATRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicIPAddresses': ?pulumi.Input.mapOptionalInputValue<List<PublicIPAddressArmReferenceResponse>, List<Map<String, dynamic>>>(publicIPAddresses, (value) => pulumi.Input.encodeList<PublicIPAddressArmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': pulumi.Input.mapInputValue<NatGatewayStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'subnets': pulumi.Input.mapInputValue<List<VirtualNetworkSubnetArmReferenceResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<VirtualNetworkSubnetArmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NatGatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayPropertiesResponse(
      inboundNATRules: (() { final guardedValue = map['inboundNATRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNATRuleResponse>(guardedValue, (value) => InboundNATRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddresses: (() { final guardedValue = map['publicIPAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PublicIPAddressArmReferenceResponse>(guardedValue, (value) => PublicIPAddressArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: pulumi.Input.fromValue(NatGatewayStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkSubnetArmReferenceResponse>(map['subnets']!, (value) => VirtualNetworkSubnetArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

