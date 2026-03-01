// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress_response.dart';
import 'ipaddress_space_response.dart';

/// VwanInfo for Firewall Networking
class VwanConfigurationResponse {
  /// IP of trust subnet for UDR
  final IPAddressResponse? ipOfTrustSubnetForUdr;
  /// Network Virtual Appliance resource ID
  final String? networkVirtualApplianceId;
  /// Trust Subnet
  final IPAddressSpaceResponse? trustSubnet;
  /// Untrust Subnet
  final IPAddressSpaceResponse? unTrustSubnet;
  /// vHub Address
  final IPAddressSpaceResponse vHub;

  /// Creates a new [VwanConfigurationResponse].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [networkVirtualApplianceId] Network Virtual Appliance resource ID
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vHub] vHub Address
  VwanConfigurationResponse({
    this.ipOfTrustSubnetForUdr,
    this.networkVirtualApplianceId,
    this.trustSubnet,
    this.unTrustSubnet,
    required this.vHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustSubnetForUdr': ?ipOfTrustSubnetForUdr == null ? null : ipOfTrustSubnetForUdr!.toMap(),
      'networkVirtualApplianceId': ?networkVirtualApplianceId,
      'trustSubnet': ?trustSubnet == null ? null : trustSubnet!.toMap(),
      'unTrustSubnet': ?unTrustSubnet == null ? null : unTrustSubnet!.toMap(),
      'vHub': vHub.toMap(),
    };
  }

  factory VwanConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VwanConfigurationResponse(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : IPAddressResponse.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>()),
      networkVirtualApplianceId: map['networkVirtualApplianceId'] == null ? null : map['networkVirtualApplianceId'] as String,
      trustSubnet: map['trustSubnet'] == null ? null : IPAddressSpaceResponse.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>()),
      unTrustSubnet: map['unTrustSubnet'] == null ? null : IPAddressSpaceResponse.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>()),
      vHub: IPAddressSpaceResponse.fromMap((map['vHub'] as Map).cast<String, dynamic>()),
    );
  }
}

