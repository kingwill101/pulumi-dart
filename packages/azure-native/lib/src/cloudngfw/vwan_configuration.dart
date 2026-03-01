// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress.dart';
import 'ipaddress_space.dart';

/// VwanInfo for Firewall Networking
class VwanConfiguration {
  /// IP of trust subnet for UDR
  final IPAddress? ipOfTrustSubnetForUdr;
  /// Network Virtual Appliance resource ID
  final String? networkVirtualApplianceId;
  /// Trust Subnet
  final IPAddressSpace? trustSubnet;
  /// Untrust Subnet
  final IPAddressSpace? unTrustSubnet;
  /// vHub Address
  final IPAddressSpace vHub;

  /// Creates a new [VwanConfiguration].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [networkVirtualApplianceId] Network Virtual Appliance resource ID
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vHub] vHub Address
  VwanConfiguration({
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

  factory VwanConfiguration.fromMap(Map<String, dynamic> map) {
    return VwanConfiguration(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : IPAddress.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>()),
      networkVirtualApplianceId: map['networkVirtualApplianceId'] == null ? null : map['networkVirtualApplianceId'] as String,
      trustSubnet: map['trustSubnet'] == null ? null : IPAddressSpace.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>()),
      unTrustSubnet: map['unTrustSubnet'] == null ? null : IPAddressSpace.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>()),
      vHub: IPAddressSpace.fromMap((map['vHub'] as Map).cast<String, dynamic>()),
    );
  }
}

