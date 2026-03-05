// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_bgp_peering_address_response.dart';

/// BGP settings details.
class BgpSettingsResponse {
  /// The BGP speaker's ASN.
  final pulumi.Input<double>? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final pulumi.Input<String>? bgpPeeringAddress;
  /// BGP peering address with IP configuration ID for virtual network gateway.
  final pulumi.Input<List<IPConfigurationBgpPeeringAddressResponse>>? bgpPeeringAddresses;
  /// The weight added to routes learned from this BGP speaker.
  final pulumi.Input<int>? peerWeight;

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
      'bgpPeeringAddresses': ?pulumi.Input.mapOptionalInputValue<List<IPConfigurationBgpPeeringAddressResponse>, List<Map<String, dynamic>>>(bgpPeeringAddresses, (value) => pulumi.Input.encodeList<IPConfigurationBgpPeeringAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerWeight': ?peerWeight,
    };
  }

  factory BgpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BgpSettingsResponse(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bgpPeeringAddress: (() { final guardedValue = map['bgpPeeringAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpPeeringAddresses: (() { final guardedValue = map['bgpPeeringAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationBgpPeeringAddressResponse>(guardedValue, (value) => IPConfigurationBgpPeeringAddressResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerWeight: (() { final guardedValue = map['peerWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

