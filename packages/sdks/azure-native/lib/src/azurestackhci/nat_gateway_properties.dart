// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule.dart';
import 'public_ipaddress_arm_reference.dart';

/// Nat Gateway resource properties
class NatGatewayProperties {
  /// List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet. Removed in 2026-04-01-preview; use InboundRule Child resource instead.
  final pulumi.Input<List<InboundNATRule>?>? inboundNATRules;
  /// List of public ip addresses that the gateway can use for NAT.
  final pulumi.Input<List<PublicIPAddressArmReference>?>? publicIPAddresses;

  /// Creates a new [NatGatewayProperties].
  /// [inboundNATRules] List of inbound NAT rules. InboundNATRules can only be set after the NAT Gateway has been associated with a vnet. Removed in 2026-04-01-preview; use InboundRule Child resource instead.
  /// [publicIPAddresses] List of public ip addresses that the gateway can use for NAT.
  const NatGatewayProperties({
    this.inboundNATRules,
    this.publicIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNATRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNATRule>, List<Map<String, dynamic>>>(inboundNATRules, (value) => pulumi.Input.encodeList<InboundNATRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIPAddresses': ?pulumi.Input.mapOptionalInputValue<List<PublicIPAddressArmReference>, List<Map<String, dynamic>>>(publicIPAddresses, (value) => pulumi.Input.encodeList<PublicIPAddressArmReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NatGatewayProperties.fromMap(Map<String, dynamic> map) {
    return NatGatewayProperties(
      inboundNATRules: (() { final guardedValue = map['inboundNATRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNATRule>(guardedValue, (value) => InboundNATRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicIPAddresses: (() { final guardedValue = map['publicIPAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PublicIPAddressArmReference>(guardedValue, (value) => PublicIPAddressArmReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
