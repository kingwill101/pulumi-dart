// ignore_for_file: unused_element, unnecessary_cast


class LocalNetworkGatewayBgpSettings {
  /// The BGP speaker's ASN.
  final int asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final String bgpPeeringAddress;
  /// The weight added to routes learned from this BGP speaker.
  final int? peerWeight;

  /// Creates a new [LocalNetworkGatewayBgpSettings].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  LocalNetworkGatewayBgpSettings({
    required this.asn,
    required this.bgpPeeringAddress,
    this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'bgpPeeringAddress': bgpPeeringAddress,
      'peerWeight': ?peerWeight,
    };
  }

  factory LocalNetworkGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayBgpSettings(
      asn: map['asn'] as int,
      bgpPeeringAddress: map['bgpPeeringAddress'] as String,
      peerWeight: map['peerWeight'] == null ? null : map['peerWeight'] as int,
    );
  }
}

