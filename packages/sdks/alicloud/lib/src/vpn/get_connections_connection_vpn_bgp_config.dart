// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionVpnBgpConfig {
  /// The authentication keys for BGP routing protocols.
  final pulumi.Input<String>? authKey;
  /// Local asn.
  final pulumi.Input<int>? localAsn;
  /// Local bgp IP.
  final pulumi.Input<String>? localBgpIp;
  /// The counterpart autonomous system number.
  final pulumi.Input<int>? peerAsn;
  /// The BGP address on the other side.
  final pulumi.Input<String>? peerBgpIp;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final pulumi.Input<String>? status;
  /// BGP Tunnel CIDR.
  final pulumi.Input<String>? tunnelCidr;

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
      authKey: map['authKey'] == null ? null : (map['authKey'] as String).input(),
      localAsn: map['localAsn'] == null ? null : (map['localAsn'] as int).input(),
      localBgpIp: map['localBgpIp'] == null ? null : (map['localBgpIp'] as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn'] as int).input(),
      peerBgpIp: map['peerBgpIp'] == null ? null : (map['peerBgpIp'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tunnelCidr: map['tunnelCidr'] == null ? null : (map['tunnelCidr'] as String).input(),
    );
  }
}

