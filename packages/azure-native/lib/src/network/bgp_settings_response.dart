// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_bgp_peering_address_response.dart';

/// BGP settings details.
class BgpSettingsResponse {
  /// The BGP speaker's ASN.
  final double? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final String? bgpPeeringAddress;
  /// BGP peering address with IP configuration ID for virtual network gateway.
  final List<IPConfigurationBgpPeeringAddressResponse>? bgpPeeringAddresses;
  /// The weight added to routes learned from this BGP speaker.
  final int? peerWeight;

  /// Creates a new [BgpSettingsResponse].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [bgpPeeringAddresses] BGP peering address with IP configuration ID for virtual network gateway.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  BgpSettingsResponse({
    this.asn,
    this.bgpPeeringAddress,
    this.bgpPeeringAddresses,
    this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
      'bgpPeeringAddresses': ?bgpPeeringAddresses == null ? null : pulumi.Input.encodeList<IPConfigurationBgpPeeringAddressResponse, Map<String, dynamic>>(bgpPeeringAddresses!, (value) => value.toMap()),
      'peerWeight': ?peerWeight,
    };
  }

  factory BgpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BgpSettingsResponse(
      asn: map['asn'] == null ? null : map['asn'] as double,
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : map['bgpPeeringAddress'] as String,
      bgpPeeringAddresses: map['bgpPeeringAddresses'] == null ? null : pulumi.Input.decodeList<IPConfigurationBgpPeeringAddressResponse>(map['bgpPeeringAddresses'], (value) => IPConfigurationBgpPeeringAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      peerWeight: map['peerWeight'] == null ? null : map['peerWeight'] as int,
    );
  }
}

