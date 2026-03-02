// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress.dart';
import 'ipaddress_space.dart';

/// VnetInfo for Firewall Networking
class VnetConfiguration {
  /// IP of trust subnet for UDR
  final pulumi.Input<IPAddress>? ipOfTrustSubnetForUdr;
  /// Trust Subnet
  final pulumi.Input<IPAddressSpace> trustSubnet;
  /// Untrust Subnet
  final pulumi.Input<IPAddressSpace> unTrustSubnet;
  /// Azure Virtual Network
  final pulumi.Input<IPAddressSpace> vnet;

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
      'ipOfTrustSubnetForUdr': ?pulumi.Input.mapOptionalInputValue<IPAddress, Map<String, dynamic>>(ipOfTrustSubnetForUdr, (value) => value.toMap()),
      'trustSubnet': pulumi.Input.mapInputValue<IPAddressSpace, Map<String, dynamic>>(trustSubnet, (value) => value.toMap()),
      'unTrustSubnet': pulumi.Input.mapInputValue<IPAddressSpace, Map<String, dynamic>>(unTrustSubnet, (value) => value.toMap()),
      'vnet': pulumi.Input.mapInputValue<IPAddressSpace, Map<String, dynamic>>(vnet, (value) => value.toMap()),
    };
  }

  factory VnetConfiguration.fromMap(Map<String, dynamic> map) {
    return VnetConfiguration(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : (IPAddress.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>())).input(),
      trustSubnet: (IPAddressSpace.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>())).input(),
      unTrustSubnet: (IPAddressSpace.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>())).input(),
      vnet: (IPAddressSpace.fromMap((map['vnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

