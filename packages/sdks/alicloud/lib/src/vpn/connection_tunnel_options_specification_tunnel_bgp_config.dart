// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionTunnelOptionsSpecificationTunnelBgpConfig {
  /// Whether BGP function is turned on.
  final pulumi.Input<String>? bgpStatus;
  final pulumi.Input<String>? localAsn;
  final pulumi.Input<String>? localBgpIp;
  /// Peer asn.
  final pulumi.Input<String>? peerAsn;
  /// Peer bgp ip.
  final pulumi.Input<String>? peerBgpIp;
  final pulumi.Input<String>? tunnelCidr;

  /// Creates a new [ConnectionTunnelOptionsSpecificationTunnelBgpConfig].
  /// [bgpStatus] Whether BGP function is turned on.
  /// [localAsn] Optional.
  /// [localBgpIp] Optional.
  /// [peerAsn] Peer asn.
  /// [peerBgpIp] Peer bgp ip.
  /// [tunnelCidr] Optional.
  const ConnectionTunnelOptionsSpecificationTunnelBgpConfig({
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
      bgpStatus: (() { final guardedValue = map['bgpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAsn: (() { final guardedValue = map['localAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localBgpIp: (() { final guardedValue = map['localBgpIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerBgpIp: (() { final guardedValue = map['peerBgpIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelCidr: (() { final guardedValue = map['tunnelCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

