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
  VwanConfigurationResponse({
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
      ipOfTrustSubnetForUdr: map['ipOfTrustSubnetForUdr'] == null ? null : (IPAddressResponse.fromMap((map['ipOfTrustSubnetForUdr'] as Map).cast<String, dynamic>())).input(),
      networkVirtualApplianceId: map['networkVirtualApplianceId'] == null ? null : (map['networkVirtualApplianceId'] as String).input(),
      trustSubnet: map['trustSubnet'] == null ? null : (IPAddressSpaceResponse.fromMap((map['trustSubnet'] as Map).cast<String, dynamic>())).input(),
      unTrustSubnet: map['unTrustSubnet'] == null ? null : (IPAddressSpaceResponse.fromMap((map['unTrustSubnet'] as Map).cast<String, dynamic>())).input(),
      vHub: (IPAddressSpaceResponse.fromMap((map['vHub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

