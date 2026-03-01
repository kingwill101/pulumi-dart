// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress_response.dart';
import 'ipaddress_space_response.dart';

/// VnetInfo for Firewall Networking
class VnetConfigurationResponse {
  /// IP of trust subnet for UDR
  final IPAddressResponse? ipOfTrustSubnetForUdr;
  /// Trust Subnet
  final IPAddressSpaceResponse trustSubnet;
  /// Untrust Subnet
  final IPAddressSpaceResponse unTrustSubnet;
  /// Azure Virtual Network
  final IPAddressSpaceResponse vnet;

  /// Creates a new [VnetConfigurationResponse].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vnet] Azure Virtual Network
  VnetConfigurationResponse({
    this.ipOfTrustSubnetForUdr,
    required this.trustSubnet,
    required this.unTrustSubnet,
    required this.vnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustSubnetForUdr': ?ipOfTrustSubnetForUdr == null ? null : ipOfTrustSubnetForUdr!.toMap(),
      'trustSubnet': trustSubnet.toMap(),
      'unTrustSubnet': unTrustSubnet.toMap(),
      'vnet': vnet.toMap(),
    };
  }

  factory VnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VnetConfigurationResponse(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : IPAddressResponse.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>()),
      trustSubnet: IPAddressSpaceResponse.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>()),
      unTrustSubnet: IPAddressSpaceResponse.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>()),
      vnet: IPAddressSpaceResponse.fromMap((map['vnet'] as Map).cast<String, dynamic>()),
    );
  }
}

