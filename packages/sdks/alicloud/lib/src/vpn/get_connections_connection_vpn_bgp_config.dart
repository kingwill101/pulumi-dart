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
  const GetConnectionsConnectionVpnBgpConfig({
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
      authKey: (() { final guardedValue = map['authKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAsn: (() { final guardedValue = map['localAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localBgpIp: (() { final guardedValue = map['localBgpIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerBgpIp: (() { final guardedValue = map['peerBgpIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelCidr: (() { final guardedValue = map['tunnelCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

