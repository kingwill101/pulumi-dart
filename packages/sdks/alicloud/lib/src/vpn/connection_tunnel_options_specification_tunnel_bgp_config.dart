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
      bgpStatus: map['bgpStatus'] == null ? null : (map['bgpStatus']! as String).input(),
      localAsn: map['localAsn'] == null ? null : (map['localAsn']! as String).input(),
      localBgpIp: map['localBgpIp'] == null ? null : (map['localBgpIp']! as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn']! as String).input(),
      peerBgpIp: map['peerBgpIp'] == null ? null : (map['peerBgpIp']! as String).input(),
      tunnelCidr: map['tunnelCidr'] == null ? null : (map['tunnelCidr']! as String).input(),
    );
  }
}

