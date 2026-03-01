// ignore_for_file: unused_element, unnecessary_cast


class VpnSiteLinkBgp {
  /// The BGP speaker's ASN.
  final int asn;
  /// The BGP peering IP address.
  final String peeringAddress;

  /// Creates a new [VpnSiteLinkBgp].
  /// [asn] The BGP speaker's ASN.
  /// [peeringAddress] The BGP peering IP address.
  VpnSiteLinkBgp({
    required this.asn,
    required this.peeringAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'peeringAddress': peeringAddress,
    };
  }

  factory VpnSiteLinkBgp.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkBgp(
      asn: map['asn'] as int,
      peeringAddress: map['peeringAddress'] as String,
    );
  }
}

