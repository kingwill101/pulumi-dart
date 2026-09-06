// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_rule_status_response.dart';
import 'ipconfiguration_arm_reference_response.dart';
import 'public_ipaddress_arm_reference_response.dart';

/// Inbound rule properties - extends InboundNATRuleProperties with additional status tracking
class InboundRulePropertiesResponse {
  /// IP configuration for the target backend.
  final pulumi.Input<IPConfigurationArmReferenceResponse> backendIPConfiguration;
  /// backend Port for the inbound rule
  final pulumi.Input<int> backendPort;
  /// Frontend Port for the inbound rule
  final pulumi.Input<int> frontendPort;
  /// Protocol for the NAT rule
  final pulumi.Input<String> protocol;
  /// Provisioning state of the inbound rule
  final pulumi.Input<String> provisioningState;
  /// Public IP Address for this NAT rule
  final pulumi.Input<PublicIPAddressArmReferenceResponse> publicIPAddress;
  /// The observed state of Inbound Rule
  final pulumi.Input<InboundRuleStatusResponse> status;

  /// Creates a new [InboundRulePropertiesResponse].
  /// [backendIPConfiguration] IP configuration for the target backend.
  /// [backendPort] backend Port for the inbound rule
  /// [frontendPort] Frontend Port for the inbound rule
  /// [protocol] Protocol for the NAT rule
  /// [provisioningState] Provisioning state of the inbound rule
  /// [publicIPAddress] Public IP Address for this NAT rule
  /// [status] The observed state of Inbound Rule
  const InboundRulePropertiesResponse({
    required this.backendIPConfiguration,
    required this.backendPort,
    required this.frontendPort,
    required this.protocol,
    required this.provisioningState,
    required this.publicIPAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfiguration': pulumi.Input.mapInputValue<IPConfigurationArmReferenceResponse, Map<String, dynamic>>(backendIPConfiguration, (value) => value.toMap()),
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'publicIPAddress': pulumi.Input.mapInputValue<PublicIPAddressArmReferenceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'status': pulumi.Input.mapInputValue<InboundRuleStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InboundRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InboundRulePropertiesResponse(
      backendIPConfiguration: pulumi.Input.fromValue(IPConfigurationArmReferenceResponse.fromMap((map['backendIPConfiguration']! as Map).cast<String, dynamic>())),
      backendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['backendPort'])),
      frontendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frontendPort'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: pulumi.Input.fromValue(PublicIPAddressArmReferenceResponse.fromMap((map['publicIPAddress']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(InboundRuleStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
