// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteServerPeerBgpOptions {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295. We recommend using a private ASN in the 64512–65534 (16-bit ASN) or 4200000000–4294967294 (32-bit ASN) range.
  final pulumi.Input<int> peerAsn;
  /// The requested liveness detection protocol for the BGP peer. Valid values are `bgp-keepalive` and `bfd`. Default value is `bgp-keepalive`.
  final pulumi.Input<String>? peerLivenessDetection;

  /// Creates a new [RouteServerPeerBgpOptions].
  /// [peerAsn] The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295. We recommend using a private ASN in the 64512–65534 (16-bit ASN) or 4200000000–4294967294 (32-bit ASN) range.
  /// [peerLivenessDetection] The requested liveness detection protocol for the BGP peer. Valid values are `bgp-keepalive` and `bfd`. Default value is `bgp-keepalive`.
  const RouteServerPeerBgpOptions({
    required this.peerAsn,
    this.peerLivenessDetection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAsn': peerAsn,
      'peerLivenessDetection': ?peerLivenessDetection,
    };
  }

  factory RouteServerPeerBgpOptions.fromMap(Map<String, dynamic> map) {
    return RouteServerPeerBgpOptions(
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      peerLivenessDetection: (() { final guardedValue = map['peerLivenessDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

