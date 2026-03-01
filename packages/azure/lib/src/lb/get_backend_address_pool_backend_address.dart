// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_address_pool_backend_address_inbound_nat_rule_port_mapping.dart';

class GetBackendAddressPoolBackendAddress {
  /// A list of `inbound_nat_rule_port_mapping` block as defined below.
  final List<GetBackendAddressPoolBackendAddressInboundNatRulePortMapping> inboundNatRulePortMappings;
  /// The Static IP address for this Load Balancer within the Virtual Network.
  final String ipAddress;
  /// Specifies the name of the Backend Address Pool.
  final String name;
  /// The ID of the Virtual Network where the Backend Address of the Load Balancer exists.
  final String virtualNetworkId;

  /// Creates a new [GetBackendAddressPoolBackendAddress].
  /// [inboundNatRulePortMappings] A list of `inbound_nat_rule_port_mapping` block as defined below.
  /// [ipAddress] The Static IP address for this Load Balancer within the Virtual Network.
  /// [name] Specifies the name of the Backend Address Pool.
  /// [virtualNetworkId] The ID of the Virtual Network where the Backend Address of the Load Balancer exists.
  GetBackendAddressPoolBackendAddress({
    required this.inboundNatRulePortMappings,
    required this.ipAddress,
    required this.name,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatRulePortMappings': pulumi.Input.encodeList<GetBackendAddressPoolBackendAddressInboundNatRulePortMapping, Map<String, dynamic>>(inboundNatRulePortMappings, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'name': name,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetBackendAddressPoolBackendAddress.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolBackendAddress(
      inboundNatRulePortMappings: pulumi.Input.decodeList<GetBackendAddressPoolBackendAddressInboundNatRulePortMapping>(map['inboundNatRulePortMappings'], (value) => GetBackendAddressPoolBackendAddressInboundNatRulePortMapping.fromMap((value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}

