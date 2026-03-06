// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_response.dart';
import 'ipaddress_space_response.dart';

/// VwanInfo for Firewall Networking
class VwanConfigurationResponse {
  /// IP of trust subnet for UDR
  final pulumi.Input<IPAddressResponse>? ipOfTrustSubnetForUdr;
  /// Network Virtual Appliance resource ID
  final pulumi.Input<String>? networkVirtualApplianceId;
  /// Trust Subnet
  final pulumi.Input<IPAddressSpaceResponse>? trustSubnet;
  /// Untrust Subnet
  final pulumi.Input<IPAddressSpaceResponse>? unTrustSubnet;
  /// vHub Address
  final pulumi.Input<IPAddressSpaceResponse> vHub;

  /// Creates a new [VwanConfigurationResponse].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [networkVirtualApplianceId] Network Virtual Appliance resource ID
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vHub] vHub Address
  const VwanConfigurationResponse({
    this.ipOfTrustSubnetForUdr,
    this.networkVirtualApplianceId,
    this.trustSubnet,
    this.unTrustSubnet,
    required this.vHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustSubnetForUdr': ?pulumi.Input.mapOptionalInputValue<IPAddressResponse, Map<String, dynamic>>(ipOfTrustSubnetForUdr, (value) => value.toMap()),
      'networkVirtualApplianceId': ?networkVirtualApplianceId,
      'trustSubnet': ?pulumi.Input.mapOptionalInputValue<IPAddressSpaceResponse, Map<String, dynamic>>(trustSubnet, (value) => value.toMap()),
      'unTrustSubnet': ?pulumi.Input.mapOptionalInputValue<IPAddressSpaceResponse, Map<String, dynamic>>(unTrustSubnet, (value) => value.toMap()),
      'vHub': pulumi.Input.mapInputValue<IPAddressSpaceResponse, Map<String, dynamic>>(vHub, (value) => value.toMap()),
    };
  }

  factory VwanConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VwanConfigurationResponse(
      ipOfTrustSubnetForUdr: (() { final guardedValue = map['ipOfTrustSubnetForUdr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkVirtualApplianceId: (() { final guardedValue = map['networkVirtualApplianceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustSubnet: (() { final guardedValue = map['trustSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unTrustSubnet: (() { final guardedValue = map['unTrustSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPAddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vHub: pulumi.Input.fromValue(IPAddressSpaceResponse.fromMap((map['vHub']! as Map).cast<String, dynamic>())),
    );
  }
}

