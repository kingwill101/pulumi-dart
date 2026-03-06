// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_bgp_peering_address.dart';

/// BGP settings details.
class BgpSettings {
  /// The BGP speaker's ASN.
  final pulumi.Input<double>? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final pulumi.Input<String>? bgpPeeringAddress;
  /// BGP peering address with IP configuration ID for virtual network gateway.
  final pulumi.Input<List<IPConfigurationBgpPeeringAddress>>? bgpPeeringAddresses;
  /// The weight added to routes learned from this BGP speaker.
  final pulumi.Input<int>? peerWeight;

  /// Creates a new [BgpSettings].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [bgpPeeringAddresses] BGP peering address with IP configuration ID for virtual network gateway.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  const BgpSettings({
    this.asn,
    this.bgpPeeringAddress,
    this.bgpPeeringAddresses,
    this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
      'bgpPeeringAddresses': ?pulumi.Input.mapOptionalInputValue<List<IPConfigurationBgpPeeringAddress>, List<Map<String, dynamic>>>(bgpPeeringAddresses, (value) => pulumi.Input.encodeList<IPConfigurationBgpPeeringAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerWeight': ?peerWeight,
    };
  }

  factory BgpSettings.fromMap(Map<String, dynamic> map) {
    return BgpSettings(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bgpPeeringAddress: (() { final guardedValue = map['bgpPeeringAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpPeeringAddresses: (() { final guardedValue = map['bgpPeeringAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationBgpPeeringAddress>(guardedValue, (value) => IPConfigurationBgpPeeringAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerWeight: (() { final guardedValue = map['peerWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

