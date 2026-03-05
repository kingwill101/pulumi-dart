// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_arm_reference_response.dart';
import 'nat_gateway_arm_reference_response.dart';

/// Public IP Properties resource.
class PublicIPAddressPropertiesResponse {
  /// IP Address. This is static. If the user specifies, we allocate that otherwise allocate from logical network address space.
  final pulumi.Input<String>? ipAddress;
  /// ipAllocationScope: Azure Reference to a particular IP Pool (ALM) or a LogicalNetwork (ALL) for allocating public IP
  final pulumi.Input<String>? ipAllocationScope;
  /// network interface or LoadBalancer frontendIPconfiguration using this public IP
  final pulumi.Input<IPConfigurationArmReferenceResponse> ipConfiguration;
  /// natGateway using this public IP
  final pulumi.Input<NatGatewayArmReferenceResponse> natGateway;
  /// Provisioning state of the public IP
  final pulumi.Input<String> provisioningState;
  /// Whether the public IP is v4 or v6. Defaults to IPv4
  final pulumi.Input<String>? publicIPAddressVersion;

  /// Creates a new [PublicIPAddressPropertiesResponse].
  /// [ipAddress] IP Address. This is static. If the user specifies, we allocate that otherwise allocate from logical network address space.
  /// [ipAllocationScope] ipAllocationScope: Azure Reference to a particular IP Pool (ALM) or a LogicalNetwork (ALL) for allocating public IP
  /// [ipConfiguration] network interface or LoadBalancer frontendIPconfiguration using this public IP
  /// [natGateway] natGateway using this public IP
  /// [provisioningState] Provisioning state of the public IP
  /// [publicIPAddressVersion] Whether the public IP is v4 or v6. Defaults to IPv4
  PublicIPAddressPropertiesResponse({
    this.ipAddress,
    this.ipAllocationScope,
    required this.ipConfiguration,
    required this.natGateway,
    required this.provisioningState,
    this.publicIPAddressVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipAllocationScope': ?ipAllocationScope,
      'ipConfiguration': pulumi.Input.mapInputValue<IPConfigurationArmReferenceResponse, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'natGateway': pulumi.Input.mapInputValue<NatGatewayArmReferenceResponse, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
    };
  }

  factory PublicIPAddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressPropertiesResponse(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocationScope: (() { final guardedValue = map['ipAllocationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfiguration: pulumi.Input.fromValue(IPConfigurationArmReferenceResponse.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      natGateway: pulumi.Input.fromValue(NatGatewayArmReferenceResponse.fromMap((map['natGateway']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

