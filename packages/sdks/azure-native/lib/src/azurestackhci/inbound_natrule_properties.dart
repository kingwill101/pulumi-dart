// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_arm_reference.dart';
import 'public_ipaddress_arm_reference.dart';

/// Inbound nat rule properties
class InboundNATRuleProperties {
  /// IP configuration for the target backend.
  final pulumi.Input<IPConfigurationArmReference> backendIPConfiguration;
  /// backend Port for the inbound rule
  final pulumi.Input<int> backendPort;
  /// Frontend Port for the inbound rule
  final pulumi.Input<int> frontendPort;
  /// Protocol for the NAT rule
  final pulumi.Input<String> protocol;
  /// Public IP Address for this NAT rule
  final pulumi.Input<PublicIPAddressArmReference> publicIPAddress;

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
      'backendIPConfiguration': pulumi.Input.mapInputValue<IPConfigurationArmReference, Map<String, dynamic>>(backendIPConfiguration, (value) => value.toMap()),
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'protocol': protocol,
      'publicIPAddress': pulumi.Input.mapInputValue<PublicIPAddressArmReference, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
    };
  }

  factory InboundNATRuleProperties.fromMap(Map<String, dynamic> map) {
    return InboundNATRuleProperties(
      backendIPConfiguration: pulumi.Input.fromValue(IPConfigurationArmReference.fromMap((map['backendIPConfiguration']! as Map).cast<String, dynamic>())),
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      publicIPAddress: pulumi.Input.fromValue(PublicIPAddressArmReference.fromMap((map['publicIPAddress']! as Map).cast<String, dynamic>())),
    );
  }
}

