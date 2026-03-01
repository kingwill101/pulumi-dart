// ignore_for_file: unused_element, unnecessary_cast

import 'ipconfiguration_arm_reference_response.dart';
import 'nat_gateway_arm_reference_response.dart';

/// Public IP Properties resource.
class PublicIPAddressPropertiesResponse {
  /// IP Address. This is static. If the user specifies, we allocate that otherwise allocate from logical network address space.
  final String? ipAddress;
  /// ipAllocationScope: Azure Reference to a particular IP Pool (ALM) or a LogicalNetwork (ALL) for allocating public IP
  final String? ipAllocationScope;
  /// network interface or LoadBalancer frontendIPconfiguration using this public IP
  final IPConfigurationArmReferenceResponse ipConfiguration;
  /// natGateway using this public IP
  final NatGatewayArmReferenceResponse natGateway;
  /// Provisioning state of the public IP
  final String provisioningState;
  /// Whether the public IP is v4 or v6. Defaults to IPv4
  final String? publicIPAddressVersion;

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
      'ipConfiguration': ipConfiguration.toMap(),
      'natGateway': natGateway.toMap(),
      'provisioningState': provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
    };
  }

  factory PublicIPAddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressPropertiesResponse(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAllocationScope: map['ipAllocationScope'] == null ? null : map['ipAllocationScope'] as String,
      ipConfiguration: IPConfigurationArmReferenceResponse.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>()),
      natGateway: NatGatewayArmReferenceResponse.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
    );
  }
}

