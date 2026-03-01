// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress.dart';
import 'ipaddress_space.dart';

/// VnetInfo for Firewall Networking
class VnetConfiguration {
  /// IP of trust subnet for UDR
  final IPAddress? ipOfTrustSubnetForUdr;
  /// Trust Subnet
  final IPAddressSpace trustSubnet;
  /// Untrust Subnet
  final IPAddressSpace unTrustSubnet;
  /// Azure Virtual Network
  final IPAddressSpace vnet;

  /// Creates a new [VnetConfiguration].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vnet] Azure Virtual Network
  VnetConfiguration({
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

  factory VnetConfiguration.fromMap(Map<String, dynamic> map) {
    return VnetConfiguration(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : IPAddress.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>()),
      trustSubnet: IPAddressSpace.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>()),
      unTrustSubnet: IPAddressSpace.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>()),
      vnet: IPAddressSpace.fromMap((map['vnet'] as Map).cast<String, dynamic>()),
    );
  }
}

