// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig {
  final String bgpStatus;
  /// Local asn.
  final String localAsn;
  /// Local bgp IP.
  final String localBgpIp;
  /// The counterpart autonomous system number.
  final String peerAsn;
  /// The BGP address on the other side.
  final String peerBgpIp;
  /// BGP Tunnel CIDR.
  final String tunnelCidr;

  /// Creates a new [GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig].
  /// [bgpStatus] Required.
  /// [localAsn] Local asn.
  /// [localBgpIp] Local bgp IP.
  /// [peerAsn] The counterpart autonomous system number.
  /// [peerBgpIp] The BGP address on the other side.
  /// [tunnelCidr] BGP Tunnel CIDR.
  GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig({
    required this.bgpStatus,
    required this.localAsn,
    required this.localBgpIp,
    required this.peerAsn,
    required this.peerBgpIp,
    required this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpStatus': bgpStatus,
      'localAsn': localAsn,
      'localBgpIp': localBgpIp,
      'peerAsn': peerAsn,
      'peerBgpIp': peerBgpIp,
      'tunnelCidr': tunnelCidr,
    };
  }

  factory GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig(
      bgpStatus: map['bgpStatus'] as String,
      localAsn: map['localAsn'] as String,
      localBgpIp: map['localBgpIp'] as String,
      peerAsn: map['peerAsn'] as String,
      peerBgpIp: map['peerBgpIp'] as String,
      tunnelCidr: map['tunnelCidr'] as String,
    );
  }
}

