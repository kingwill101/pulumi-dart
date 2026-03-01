// ignore_for_file: unused_element, unnecessary_cast

import 'ipconfiguration_arm_reference.dart';
import 'public_ipaddress_arm_reference.dart';

/// Inbound nat rule properties
class InboundNATRuleProperties {
  /// IP configuration for the target backend.
  final IPConfigurationArmReference backendIPConfiguration;
  /// backend Port for the inbound rule
  final int backendPort;
  /// Frontend Port for the inbound rule
  final int frontendPort;
  /// Protocol for the NAT rule
  final String protocol;
  /// Public IP Address for this NAT rule
  final PublicIPAddressArmReference publicIPAddress;

  /// Creates a new [InboundNATRuleProperties].
  /// [backendIPConfiguration] IP configuration for the target backend.
  /// [backendPort] backend Port for the inbound rule
  /// [frontendPort] Frontend Port for the inbound rule
  /// [protocol] Protocol for the NAT rule
  /// [publicIPAddress] Public IP Address for this NAT rule
  InboundNATRuleProperties({
    required this.backendIPConfiguration,
    required this.backendPort,
    required this.frontendPort,
    required this.protocol,
    required this.publicIPAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfiguration': backendIPConfiguration.toMap(),
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'protocol': protocol,
      'publicIPAddress': publicIPAddress.toMap(),
    };
  }

  factory InboundNATRuleProperties.fromMap(Map<String, dynamic> map) {
    return InboundNATRuleProperties(
      backendIPConfiguration: IPConfigurationArmReference.fromMap((map['backendIPConfiguration'] as Map).cast<String, dynamic>()),
      backendPort: map['backendPort'] as int,
      frontendPort: map['frontendPort'] as int,
      protocol: map['protocol'] as String,
      publicIPAddress: PublicIPAddressArmReference.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

