// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress.dart';
import 'ipaddress_space.dart';

/// VwanInfo for Firewall Networking
class VwanConfiguration {
  /// IP of trust subnet for UDR
  final pulumi.Input<IPAddress>? ipOfTrustSubnetForUdr;
  /// Network Virtual Appliance resource ID
  final pulumi.Input<String>? networkVirtualApplianceId;
  /// Trust Subnet
  final pulumi.Input<IPAddressSpace>? trustSubnet;
  /// Untrust Subnet
  final pulumi.Input<IPAddressSpace>? unTrustSubnet;
  /// vHub Address
  final pulumi.Input<IPAddressSpace> vHub;

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
      'ipOfTrustSubnetForUdr': ?pulumi.Input.mapOptionalInputValue<IPAddress, Map<String, dynamic>>(ipOfTrustSubnetForUdr, (value) => value.toMap()),
      'networkVirtualApplianceId': ?networkVirtualApplianceId,
      'trustSubnet': ?pulumi.Input.mapOptionalInputValue<IPAddressSpace, Map<String, dynamic>>(trustSubnet, (value) => value.toMap()),
      'unTrustSubnet': ?pulumi.Input.mapOptionalInputValue<IPAddressSpace, Map<String, dynamic>>(unTrustSubnet, (value) => value.toMap()),
      'vHub': pulumi.Input.mapInputValue<IPAddressSpace, Map<String, dynamic>>(vHub, (value) => value.toMap()),
    };
  }

  factory VwanConfiguration.fromMap(Map<String, dynamic> map) {
    return VwanConfiguration(
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : (IPAddress.fromMap((map['ipOfTrustSubnetForUdr']! as Map).cast<String, dynamic>())).input(),
      networkVirtualApplianceId: map['networkVirtualApplianceId'] == null ? null : (map['networkVirtualApplianceId']! as String).input(),
      trustSubnet: map['trustSubnet'] == null ? null : (IPAddressSpace.fromMap((map['trustSubnet']! as Map).cast<String, dynamic>())).input(),
      unTrustSubnet: map['unTrustSubnet'] == null ? null : (IPAddressSpace.fromMap((map['unTrustSubnet']! as Map).cast<String, dynamic>())).input(),
      vHub: (IPAddressSpace.fromMap((map['vHub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

