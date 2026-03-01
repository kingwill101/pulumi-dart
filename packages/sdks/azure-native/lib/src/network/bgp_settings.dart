// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_bgp_peering_address.dart';

/// BGP settings details.
class BgpSettings {
  /// The BGP speaker's ASN.
  final double? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final String? bgpPeeringAddress;
  /// BGP peering address with IP configuration ID for virtual network gateway.
  final List<IPConfigurationBgpPeeringAddress>? bgpPeeringAddresses;
  /// The weight added to routes learned from this BGP speaker.
  final int? peerWeight;

  /// Creates a new [BgpSettings].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [bgpPeeringAddresses] BGP peering address with IP configuration ID for virtual network gateway.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  BgpSettings({
    this.asn,
    this.bgpPeeringAddress,
    this.bgpPeeringAddresses,
    this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
      'bgpPeeringAddresses': ?bgpPeeringAddresses == null ? null : pulumi.Input.encodeList<IPConfigurationBgpPeeringAddress, Map<String, dynamic>>(bgpPeeringAddresses!, (value) => value.toMap()),
      'peerWeight': ?peerWeight,
    };
  }

  factory BgpSettings.fromMap(Map<String, dynamic> map) {
    return BgpSettings(
      asn: map['asn'] == null ? null : map['asn'] as double,
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : map['bgpPeeringAddress'] as String,
      bgpPeeringAddresses: map['bgpPeeringAddresses'] == null ? null : pulumi.Input.decodeList<IPConfigurationBgpPeeringAddress>(map['bgpPeeringAddresses'], (value) => IPConfigurationBgpPeeringAddress.fromMap((value as Map).cast<String, dynamic>())),
      peerWeight: map['peerWeight'] == null ? null : map['peerWeight'] as int,
    );
  }
}

