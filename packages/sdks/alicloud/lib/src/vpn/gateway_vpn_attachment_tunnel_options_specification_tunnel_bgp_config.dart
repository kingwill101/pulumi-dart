// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig {
  /// BGP status.
  final pulumi.Input<String>? bgpStatus;
  final pulumi.Input<int>? localAsn;
  final pulumi.Input<String>? localBgpIp;
  /// Peer asn.
  final pulumi.Input<String>? peerAsn;
  /// Peer bgp ip.
  final pulumi.Input<String>? peerBgpIp;
  final pulumi.Input<String>? tunnelCidr;

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
      bgpStatus: map['bgpStatus'] == null ? null : (map['bgpStatus']! as String).input(),
      localAsn: map['localAsn'] == null ? null : (map['localAsn']! as int).input(),
      localBgpIp: map['localBgpIp'] == null ? null : (map['localBgpIp']! as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn']! as String).input(),
      peerBgpIp: map['peerBgpIp'] == null ? null : (map['peerBgpIp']! as String).input(),
      tunnelCidr: map['tunnelCidr'] == null ? null : (map['tunnelCidr']! as String).input(),
    );
  }
}

