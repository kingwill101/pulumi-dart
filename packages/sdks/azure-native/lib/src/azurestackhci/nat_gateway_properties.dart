// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule.dart';
import 'public_ipaddress_arm_reference.dart';

/// Nat Gateway resource properties
class NatGatewayProperties {
  /// List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  final List<InboundNATRule>? inboundNATRules;
  /// List of public ip addresses that the gateway can use for NAT.
  final List<PublicIPAddressArmReference>? publicIPAddresses;

  /// Creates a new [NatGatewayProperties].
  /// [inboundNATRules] List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet
  /// [publicIPAddresses] List of public ip addresses that the gateway can use for NAT.
  NatGatewayProperties({
    this.inboundNATRules,
    this.publicIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNATRules': ?inboundNATRules == null ? null : pulumi.Input.encodeList<InboundNATRule, Map<String, dynamic>>(inboundNATRules!, (value) => value.toMap()),
      'publicIPAddresses': ?publicIPAddresses == null ? null : pulumi.Input.encodeList<PublicIPAddressArmReference, Map<String, dynamic>>(publicIPAddresses!, (value) => value.toMap()),
    };
  }

  factory NatGatewayProperties.fromMap(Map<String, dynamic> map) {
    return NatGatewayProperties(
      inboundNATRules: map['inboundNATRules'] == null ? null : pulumi.Input.decodeList<InboundNATRule>(map['inboundNATRules'], (value) => InboundNATRule.fromMap((value as Map).cast<String, dynamic>())),
      publicIPAddresses: map['publicIPAddresses'] == null ? null : pulumi.Input.decodeList<PublicIPAddressArmReference>(map['publicIPAddresses'], (value) => PublicIPAddressArmReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

