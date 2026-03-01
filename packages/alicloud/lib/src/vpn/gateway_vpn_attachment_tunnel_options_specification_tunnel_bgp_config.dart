// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig {
  /// BGP status.
  final String? bgpStatus;
  final int? localAsn;
  final String? localBgpIp;
  /// Peer asn.
  final String? peerAsn;
  /// Peer bgp ip.
  final String? peerBgpIp;
  final String? tunnelCidr;

  /// Creates a new [GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig].
  /// [bgpStatus] BGP status.
  /// [localAsn] Optional.
  /// [localBgpIp] Optional.
  /// [peerAsn] Peer asn.
  /// [peerBgpIp] Peer bgp ip.
  /// [tunnelCidr] Optional.
  GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig({
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

  factory GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig(
      bgpStatus: map['bgpStatus'] == null ? null : map['bgpStatus'] as String,
      localAsn: map['localAsn'] == null ? null : map['localAsn'] as int,
      localBgpIp: map['localBgpIp'] == null ? null : map['localBgpIp'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as String,
      peerBgpIp: map['peerBgpIp'] == null ? null : map['peerBgpIp'] as String,
      tunnelCidr: map['tunnelCidr'] == null ? null : map['tunnelCidr'] as String,
    );
  }
}

