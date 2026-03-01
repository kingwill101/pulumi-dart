// ignore_for_file: unused_element, unnecessary_cast


class ServiceLoadBalancerBgpPeer {
  /// The indicator of BFD enablement for this BgpPeer.
  final String? bfdEnabled;
  /// The indicator to enable multi-hop peering support.
  final String? bgpMultiHop;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP hold time value. This field uses ISO 8601 duration format, for example P1H.
  final String? holdTime;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP keepalive time value. This field uses ISO 8601 duration format, for example P1H.
  final String? keepAliveTime;
  /// The autonomous system number used for the local end of the BGP session.
  final double? myAsn;
  /// The name used to identify this BGP peer for association with a BGP advertisement.
  final String name;
  /// The authentication password for routers enforcing TCP MD5 authenticated sessions.
  final String? password;
  /// The IPv4 or IPv6 address used to connect this BGP session.
  final String peerAddress;
  /// The autonomous system number expected from the remote end of the BGP session.
  final double peerAsn;
  /// The port used to connect this BGP session.
  final double? peerPort;

  /// Creates a new [ServiceLoadBalancerBgpPeer].
  /// [bfdEnabled] The indicator of BFD enablement for this BgpPeer.
  /// [bgpMultiHop] The indicator to enable multi-hop peering support.
  /// [holdTime] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP hold time value. This field uses ISO 8601 duration format, for example P1H.
  /// [keepAliveTime] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP keepalive time value. This field uses ISO 8601 duration format, for example P1H.
  /// [myAsn] The autonomous system number used for the local end of the BGP session.
  /// [name] The name used to identify this BGP peer for association with a BGP advertisement.
  /// [password] The authentication password for routers enforcing TCP MD5 authenticated sessions.
  /// [peerAddress] The IPv4 or IPv6 address used to connect this BGP session.
  /// [peerAsn] The autonomous system number expected from the remote end of the BGP session.
  /// [peerPort] The port used to connect this BGP session.
  ServiceLoadBalancerBgpPeer({
    this.bfdEnabled,
    this.bgpMultiHop,
    this.holdTime,
    this.keepAliveTime,
    this.myAsn,
    required this.name,
    this.password,
    required this.peerAddress,
    required this.peerAsn,
    this.peerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdEnabled': ?bfdEnabled,
      'bgpMultiHop': ?bgpMultiHop,
      'holdTime': ?holdTime,
      'keepAliveTime': ?keepAliveTime,
      'myAsn': ?myAsn,
      'name': name,
      'password': ?password,
      'peerAddress': peerAddress,
      'peerAsn': peerAsn,
      'peerPort': ?peerPort,
    };
  }

  factory ServiceLoadBalancerBgpPeer.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancerBgpPeer(
      bfdEnabled: map['bfdEnabled'] == null ? null : map['bfdEnabled'] as String,
      bgpMultiHop: map['bgpMultiHop'] == null ? null : map['bgpMultiHop'] as String,
      holdTime: map['holdTime'] == null ? null : map['holdTime'] as String,
      keepAliveTime: map['keepAliveTime'] == null ? null : map['keepAliveTime'] as String,
      myAsn: map['myAsn'] == null ? null : map['myAsn'] as double,
      name: map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      peerAddress: map['peerAddress'] as String,
      peerAsn: map['peerAsn'] as double,
      peerPort: map['peerPort'] == null ? null : map['peerPort'] as double,
    );
  }
}

