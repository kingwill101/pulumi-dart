// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionVpnBgpConfig {
  /// The authentication keys for BGP routing protocols.
  final String? authKey;
  /// Local asn.
  final int? localAsn;
  /// Local bgp IP.
  final String? localBgpIp;
  /// The counterpart autonomous system number.
  final int? peerAsn;
  /// The BGP address on the other side.
  final String? peerBgpIp;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final String? status;
  /// BGP Tunnel CIDR.
  final String? tunnelCidr;

  /// Creates a new [GetConnectionsConnectionVpnBgpConfig].
  /// [authKey] The authentication keys for BGP routing protocols.
  /// [localAsn] Local asn.
  /// [localBgpIp] Local bgp IP.
  /// [peerAsn] The counterpart autonomous system number.
  /// [peerBgpIp] The BGP address on the other side.
  /// [status] The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  /// [tunnelCidr] BGP Tunnel CIDR.
  GetConnectionsConnectionVpnBgpConfig({
    this.authKey,
    this.localAsn,
    this.localBgpIp,
    this.peerAsn,
    this.peerBgpIp,
    this.status,
    this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': ?authKey,
      'localAsn': ?localAsn,
      'localBgpIp': ?localBgpIp,
      'peerAsn': ?peerAsn,
      'peerBgpIp': ?peerBgpIp,
      'status': ?status,
      'tunnelCidr': ?tunnelCidr,
    };
  }

  factory GetConnectionsConnectionVpnBgpConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionVpnBgpConfig(
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      localAsn: map['localAsn'] == null ? null : map['localAsn'] as int,
      localBgpIp: map['localBgpIp'] == null ? null : map['localBgpIp'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as int,
      peerBgpIp: map['peerBgpIp'] == null ? null : map['peerBgpIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tunnelCidr: map['tunnelCidr'] == null ? null : map['tunnelCidr'] as String,
    );
  }
}

