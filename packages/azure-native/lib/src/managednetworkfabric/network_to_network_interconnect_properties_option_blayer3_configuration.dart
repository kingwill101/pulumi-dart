// ignore_for_file: unused_element, unnecessary_cast


/// Common properties for Layer3Configuration.
class NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration {
  /// ASN of PE devices for CE/PE connectivity.Example : 28
  final double peerASN;
  /// IPv4 Address Prefix.
  final String? primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final String? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final String? secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final String? secondaryIpv6Prefix;
  /// VLAN for CE/PE Layer 3 connectivity.Example : 501
  final int vlanId;

  /// Creates a new [NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration].
  /// [peerASN] ASN of PE devices for CE/PE connectivity.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] VLAN for CE/PE Layer 3 connectivity.Example : 501
  NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration({
    required this.peerASN,
    this.primaryIpv4Prefix,
    this.primaryIpv6Prefix,
    this.secondaryIpv4Prefix,
    this.secondaryIpv6Prefix,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration.fromMap(Map<String, dynamic> map) {
    return NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration(
      peerASN: map['peerASN'] as double,
      primaryIpv4Prefix: map['primaryIpv4Prefix'] == null ? null : map['primaryIpv4Prefix'] as String,
      primaryIpv6Prefix: map['primaryIpv6Prefix'] == null ? null : map['primaryIpv6Prefix'] as String,
      secondaryIpv4Prefix: map['secondaryIpv4Prefix'] == null ? null : map['secondaryIpv4Prefix'] as String,
      secondaryIpv6Prefix: map['secondaryIpv6Prefix'] == null ? null : map['secondaryIpv6Prefix'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

