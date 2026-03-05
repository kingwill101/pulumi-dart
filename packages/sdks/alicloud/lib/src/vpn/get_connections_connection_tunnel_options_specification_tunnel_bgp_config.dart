// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig {
  final pulumi.Input<String> bgpStatus;
  /// Local asn.
  final pulumi.Input<String> localAsn;
  /// Local bgp IP.
  final pulumi.Input<String> localBgpIp;
  /// The counterpart autonomous system number.
  final pulumi.Input<String> peerAsn;
  /// The BGP address on the other side.
  final pulumi.Input<String> peerBgpIp;
  /// BGP Tunnel CIDR.
  final pulumi.Input<String> tunnelCidr;

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
      bgpStatus: pulumi.Input.fromValue(map['bgpStatus'] as String),
      localAsn: pulumi.Input.fromValue(map['localAsn'] as String),
      localBgpIp: pulumi.Input.fromValue(map['localBgpIp'] as String),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as String),
      peerBgpIp: pulumi.Input.fromValue(map['peerBgpIp'] as String),
      tunnelCidr: pulumi.Input.fromValue(map['tunnelCidr'] as String),
    );
  }
}

