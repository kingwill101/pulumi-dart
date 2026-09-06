// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_arm_reference_response.dart';
import 'public_ipaddress_arm_reference_response.dart';

/// Inbound nat rule properties
class InboundNATRulePropertiesResponse {
  /// IP configuration for the target backend.
  final pulumi.Input<IPConfigurationArmReferenceResponse> backendIPConfiguration;
  /// backend Port for the inbound rule
  final pulumi.Input<int> backendPort;
  /// Frontend Port for the inbound rule
  final pulumi.Input<int> frontendPort;
  /// Protocol for the NAT rule
  final pulumi.Input<String> protocol;
  /// Public IP Address for this NAT rule
  final pulumi.Input<PublicIPAddressArmReferenceResponse> publicIPAddress;

  /// Creates a new [InboundNATRulePropertiesResponse].
  /// [backendIPConfiguration] IP configuration for the target backend.
  /// [backendPort] backend Port for the inbound rule
  /// [frontendPort] Frontend Port for the inbound rule
  /// [protocol] Protocol for the NAT rule
  /// [publicIPAddress] Public IP Address for this NAT rule
  const InboundNATRulePropertiesResponse({
    required this.backendIPConfiguration,
    required this.backendPort,
    required this.frontendPort,
    required this.protocol,
    required this.publicIPAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfiguration': pulumi.Input.mapInputValue<IPConfigurationArmReferenceResponse, Map<String, dynamic>>(backendIPConfiguration, (value) => value.toMap()),
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'protocol': protocol,
      'publicIPAddress': pulumi.Input.mapInputValue<PublicIPAddressArmReferenceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
    };
  }

  factory InboundNATRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InboundNATRulePropertiesResponse(
      backendIPConfiguration: pulumi.Input.fromValue(IPConfigurationArmReferenceResponse.fromMap((map['backendIPConfiguration']! as Map).cast<String, dynamic>())),
      backendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['backendPort'])),
      frontendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frontendPort'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      publicIPAddress: pulumi.Input.fromValue(PublicIPAddressArmReferenceResponse.fromMap((map['publicIPAddress']! as Map).cast<String, dynamic>())),
    );
  }
}
