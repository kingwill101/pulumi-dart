// ignore_for_file: unused_element, unnecessary_cast


class ConnectionTunnelOptionsSpecificationTunnelBgpConfig {
  /// Whether BGP function is turned on.
  final String? bgpStatus;
  final String? localAsn;
  final String? localBgpIp;
  /// Peer asn.
  final String? peerAsn;
  /// Peer bgp ip.
  final String? peerBgpIp;
  final String? tunnelCidr;

  /// Creates a new [ConnectionTunnelOptionsSpecificationTunnelBgpConfig].
  /// [bgpStatus] Whether BGP function is turned on.
  /// [localAsn] Optional.
  /// [localBgpIp] Optional.
  /// [peerAsn] Peer asn.
  /// [peerBgpIp] Peer bgp ip.
  /// [tunnelCidr] Optional.
  ConnectionTunnelOptionsSpecificationTunnelBgpConfig({
    this.bgpStatus,
    this.localAsn,
    this.localBgpIp,
    this.peerAsn,
    this.peerBgpIp,
    this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpStatus': ?bgpStatus,
      'localAsn': ?localAsn,
      'localBgpIp': ?localBgpIp,
      'peerAsn': ?peerAsn,
      'peerBgpIp': ?peerBgpIp,
      'tunnelCidr': ?tunnelCidr,
    };
  }

  factory ConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionTunnelOptionsSpecificationTunnelBgpConfig(
      bgpStatus: map['bgpStatus'] == null ? null : map['bgpStatus'] as String,
      localAsn: map['localAsn'] == null ? null : map['localAsn'] as String,
      localBgpIp: map['localBgpIp'] == null ? null : map['localBgpIp'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as String,
      peerBgpIp: map['peerBgpIp'] == null ? null : map['peerBgpIp'] as String,
      tunnelCidr: map['tunnelCidr'] == null ? null : map['tunnelCidr'] as String,
    );
  }
}

