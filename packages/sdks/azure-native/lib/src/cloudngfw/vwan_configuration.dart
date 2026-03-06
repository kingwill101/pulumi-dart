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
  const VwanConfiguration({
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
      ipOfTrustSubnetForUdr: (() { final guardedValue = map['ipOfTrustSubnetForUdr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkVirtualApplianceId: (() { final guardedValue = map['networkVirtualApplianceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustSubnet: (() { final guardedValue = map['trustSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unTrustSubnet: (() { final guardedValue = map['unTrustSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vHub: pulumi.Input.fromValue(IPAddressSpace.fromMap((map['vHub']! as Map).cast<String, dynamic>())),
    );
  }
}

